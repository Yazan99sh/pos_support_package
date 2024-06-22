import 'package:flutter/material.dart';
import 'package:support_pkg/generated/l10n.dart';

enum CardStatusEnum {
  available(1),
  assigned(2),
  replaced(3),
  locked(4),
  ;

  const CardStatusEnum(this.cardStatusId);

  final int cardStatusId;

  String getMessage() {
    switch (this) {
      case CardStatusEnum.available:
        return S.current.available;
      case CardStatusEnum.assigned:
        return S.current.assigned;
      case CardStatusEnum.replaced:
        return S.current.replaced;
      case CardStatusEnum.locked:
        return S.current.locked;
      default:
        return S.current.locked;
    }
  }

  static CardStatusEnum getEnum(int value) {
    switch (value) {
      case 1:
        return CardStatusEnum.available;
      case 2:
        return CardStatusEnum.assigned;
      case 3:
        return CardStatusEnum.replaced;
      case 4:
        return CardStatusEnum.locked;
      default:
        return CardStatusEnum.locked;
    }
  }


   Color getColor() {
    switch (this) {
      case CardStatusEnum.available:
        return Colors.green;
      case CardStatusEnum.assigned:
        return Colors.orange;
      case CardStatusEnum.locked:
        return Colors.black;
      case CardStatusEnum.replaced:
        return Colors.red;
      default:
        return Colors.red;
    }
  }
}
