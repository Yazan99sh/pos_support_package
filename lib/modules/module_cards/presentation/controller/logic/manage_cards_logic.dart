import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
 import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:support_pkg/injection.dart';
import 'package:support_pkg/modules/module_cards/data/request/create_card_request.dart';
import 'package:support_pkg/modules/module_cards/data/request/get_cards_request.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/nfc_card_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/usecases/create_nfccard_usecase.dart';
import 'package:support_pkg/modules/module_cards/domain/usecases/get_businesses_usecase.dart';
import 'package:support_pkg/modules/module_cards/domain/usecases/get_cards_usecase.dart';
import 'package:support_pkg/modules/module_cards/presentation/controller/states/cards_controller_states.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/views/cards_loaded_view.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/widgets/create_nfc_card_dialog.dart';
import 'package:support_pkg/utils/extensions.dart';
import 'package:support_pkg/utils/helper/toast_helper.dart';


@lazySingleton
class ManageCardsLogic extends GetxController
    with StateMixin<CardsControllerState> {
  final formKey = GlobalKey<FormState>();

  BusinessEntity? selectedBusiness;
  List<BusinessEntity> businesses = [];

  var suggestionsController = SuggestionsController<BusinessEntity>();
  var searchController = TextEditingController();
  int _currentPage = 1;
  bool reachLastPage = false;
  List<NfcCardEntity> cards = [];

  late ScrollController cardsScrollController;
  late PagewiseLoadController pageLoadOrderController;

  int cardStatus = 1; // avaliable

  String cardTagNumber = '';

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onReady() {
    //
    super.onReady();
  }

  @override
  void onClose() {
    //
    super.onClose();
  }

  Future<void> initOrderPagination() async {
    change(null, status: RxStatus.loading());
    reachLastPage = false;
    cards = [];
    _currentPage = 1;
    cardsScrollController = ScrollController();
    pageLoadOrderController = PagewiseLoadController(
        pageFuture: (offset) => _getMoreOrders(offset ?? 0), pageSize: 15);

    change(CardsLoadedState(screen: CardsLoadedView(cards, this)),
        status: RxStatus.success());
  }

  Future<List<NfcCardEntity>> _getMoreOrders(int offset) async {
    int previousSize = cards.length;
    if (reachLastPage == false) {
      await getCards();
    }
    return cards.sublist(previousSize);
  }

  createNewNfcCard(String tagId) async {
    var result = await ii<CreateNfcCardUseCase>().call(CreateCardRequest(
        tagId: tagId,
        businessId: selectedBusiness?.id ?? '-1',
        cardStatusId: cardStatus));
    result.fold((l) => ToastHelper.showError(error: l.getMessage), (r) {
      stopListenToNfc();
      initOrderPagination();
    });
  }

  getCards() async {
    var result = await ii<GetCardsUseCase>().call(
      GetCardRequest(
          count: 15,
          page: _currentPage,
          businessesId: selectedBusiness?.id ?? '-1'),
    );
    result.fold((l) => ToastHelper.showError(error: l.getMessage), (r) async {
      if (r.totalPageCount == _currentPage) {
        reachLastPage = true;
      }
      cards.addAll(r.cards);
      _currentPage++;
      // change(CardsLoadedState(screen: CardsLoadedView(cards,this)),
      //     status:cards.isEmpty ?   RxStatus.empty() : RxStatus.success());
    });
  }

  List<BusinessEntity> getBusinesses(String name) {
    ii<GetBusinessesUseCase>().call(name).then((result) {
      result.fold((l) => ToastHelper.showError(error: l.getMessage), (r) {
        businesses = r;
      });
    });
    return businesses;
  }

  void startListenToNfc() {
    if (Platform.isWindows) {
      return;
    }
    NfcManager.instance.startSession(
      onDiscovered: (NfcTag tag) async {
        var cardNumber = await _convertNfcTagData(tag);
        if (cardNumber != null) {
          cardTagNumber = cardNumber;
          Get.back();
          Get.dialog(NfcInfoDialog(
            onConfirm: () {
              Get.back();
              createNewNfcCard(cardTagNumber);
            },
            controller: this,
            nfcTageId: cardTagNumber,
          ));
        }
      },
    );
  }

  stopListenToNfc(){
    NfcManager.instance.stopSession();
  }

  Future<String?> _convertNfcTagData(NfcTag tag) async {
    String? cardNumber;
    try {
      tag.data['ndef']['identifier']
          .map((e) => e.toRadixString(16).padLeft(2, '0'))
          .join('');
      final ndef = Ndef.from(tag);
      var payload = ndef!.cachedMessage!.records[0].payload;
      // var sub = payload.sublist(payload[0] + 1);
      // String tagRecordText = String.fromCharCodes(sub);
      String tagRecordText = String.fromCharCodes(payload);
      cardNumber = tagRecordText;
      cardNumber =
          cardNumber.replaceAllMapped(RegExp(r'[^0-9]'), (match) => '');
      return cardNumber;
    } catch (e) {
      ii<Logger>().e(e.toString());
      ToastHelper.showError(error: e.toString());
    }
    return cardNumber;
  }
}
