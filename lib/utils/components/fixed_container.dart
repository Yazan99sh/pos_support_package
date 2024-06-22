import 'package:flutter/material.dart';

class FixedContainer extends StatelessWidget {
  final Widget child;

  const FixedContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 600,
      ),
      child: child,
    );
  }
}
