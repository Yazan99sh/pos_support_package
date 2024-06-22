import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Screens {
  final GetxController c;

  Screens(this.c);

  Widget getUI(BuildContext context);
}
