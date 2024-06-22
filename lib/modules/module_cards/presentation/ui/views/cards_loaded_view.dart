import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:support_pkg/core/screens/screens.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/nfc_card_entity.dart';
import 'package:support_pkg/modules/module_cards/presentation/controller/logic/manage_cards_logic.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/widgets/card_widget.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/widgets/create_nfc_card_dialog.dart';
import 'package:support_pkg/utils/extension/extension.dart';
import 'package:support_pkg/utils/theme_consts.dart';

class CardsLoadedView extends Screens {
  final ManageCardsLogic controller;
 final List<NfcCardEntity> cards;

    CardsLoadedView(this.cards, this.controller) : super(controller) ;

  @override
  Widget getUI(BuildContext context) {
 return  Expanded(
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [

       Container(
         decoration: BoxDecoration(
             color: Theme.of(context).scaffoldBackgroundColor,
             borderRadius: BorderRadius.circular(ThemeConstants.circularRounded),
             boxShadow: [
               BoxShadow(
                 color: Theme.of(context).colorScheme.background,
                 blurRadius: 6,
                 spreadRadius: 2.5,
                 offset: const Offset(0.5, 0.5),
               )
             ]),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(

             mainAxisSize: MainAxisSize.min,
             children: [
               Text('${controller.selectedBusiness?.name}',style: Theme.of(context).textTheme.titleMedium,),
               context.sizedBoxWidthSmall,
               ElevatedButton(
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                 onPressed: () async {
                   showAddNfcCardDialog(controller: controller,);
                 },
                 child: Row(
                   mainAxisAlignment:MainAxisAlignment.center,
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     // SvgPicture.asset(AppAssets.assignNFCIcon),
                     context.sizedBoxWidthMicro,
                     Text(S.current.assignNFC),
                   ],
                 ),
               ),

             ],
           ),
         ),
       ),

       Expanded(
         child: PagewiseGridView.extent(
           shrinkWrap: true,
           controller: controller.cardsScrollController,
           pageLoadController: controller.pageLoadOrderController,
           addAutomaticKeepAlives: false,
           maxCrossAxisExtent: 200,
           // crossAxisSpacing: 26,
           // mainAxisSpacing: 26,
           childAspectRatio: 3 / 3   ,
           scrollDirection: Axis.vertical,
           padding: const EdgeInsets.only(bottom: 16),
           itemBuilder: (ctx, entry, index) => Padding(
             padding: const EdgeInsets.all(8.0),
             child: NfcCardWidget(
              nfcCardEntity: cards[index],
             ),
           ),
         ),
       ),
     ],
   ),
 );
  }


}
