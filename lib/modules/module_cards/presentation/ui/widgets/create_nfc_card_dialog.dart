import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:support_pkg/core/module_theme/service/theme_service/theme_service.dart';
import 'package:support_pkg/generated/assets.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/modules/module_cards/domain/enum/card_status_type_enum.dart';
import 'package:support_pkg/modules/module_cards/presentation/controller/logic/manage_cards_logic.dart';
import 'package:support_pkg/utils/components/general_alert_dialog.dart';
import 'package:support_pkg/utils/components/rounded_btn.dart';
import 'package:support_pkg/utils/components/rounded_dropdown_list.dart';
import 'package:support_pkg/utils/extension/extension.dart';

showAddNfcCardDialog({
  required ManageCardsLogic controller,
  }) {
  Get.dialog(ScanNfcDialog(controller: controller,));
}

class ScanNfcDialog extends StatefulWidget {

  final ManageCardsLogic controller;
  const ScanNfcDialog({super.key,required this.controller});

  @override
  State<ScanNfcDialog> createState() => _ScanNfcDialogState();
}

class _ScanNfcDialogState extends State<ScanNfcDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          height: 330,
          width: 300,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(Assets.animationsTapNfc),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.current.addNfcCard,
                    style: context.textTheme.titleMedium,
                  ),
                ),
                RoundedBtnWidget(
                  onTap: () => Get.back(),
                  btnText: S.current.cancel,
                  bgColor: Colors.white,
                  boxBorder: Border.all(
                    color: context.colorScheme.primaryColor,
                    width: .5,
                  ),
                  btnTextColor: context.colorScheme.primaryColor,
                  btnPadding: const EdgeInsets.symmetric(vertical: 8),
                  wrapWidth: false,
                  width: 200,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  @override
  void initState() {
    widget.controller.startListenToNfc();
    super.initState();
  }
}



class NfcInfoDialog extends StatelessWidget {
  final ManageCardsLogic controller;
  final String? nfcTageId;
  final Function()  onConfirm;
  const NfcInfoDialog({super.key, this.nfcTageId,  required this.controller ,  required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return GeneralAlertDialog(
        title: S.current.createPayment,
        height: 300,
        child: Column(
          children: [
            RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: S.current.nfcCardInfo +": ",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: '$nfcTageId',
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ]),
            ),
            context.sizedBoxHeightSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Text('choose the card status: ',style:context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
                RoundedDropDownList(
                  maxWidth: 120,
                  height: 50,
                  selectedValue: controller.cardStatus,
                  bgColor: AppColors.primaryColorLight,
                  items: CardStatusEnum.values
                      .map(
                        (e) => DropdownMenuItem<int>(
                      value: e.cardStatusId,
                      child: Text(
                        e.getMessage(),
                        style: context.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                      ),
                    ),
                  )
                      .toList(),
                  onChange: (e) {
                    controller.cardStatus = e;
                  },
                ),
              ],
            ),

            context.sizedBoxHeightDefault,

            RoundedBtnWidget(
                 width: 150,
                onTap: onConfirm,
                btnText: S.current.confirm,
                btnPadding: const EdgeInsets.symmetric(vertical: 8))
          ],
        ));
  }
}
