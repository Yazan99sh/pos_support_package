import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/nfc_card_entity.dart';
import 'package:support_pkg/utils/extension/extension.dart';
import 'package:support_pkg/utils/theme_consts.dart';


class NfcCardWidget extends StatelessWidget {
  final NfcCardEntity nfcCardEntity;
  const NfcCardWidget({super.key, required this.nfcCardEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text('#${nfcCardEntity.id}',style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
            context.sizedBoxHeightExtraSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('NFC TAG ID  '),
                Text('${nfcCardEntity.tagId}',style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
              ],
            ),
            context.sizedBoxHeightExtraSmall,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: nfcCardEntity.cardStatusEnum?.getColor()
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(nfcCardEntity.cardStatusEnum?.getMessage() ?? '',style: const TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
