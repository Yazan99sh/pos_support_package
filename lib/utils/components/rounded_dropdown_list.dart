import 'package:flutter/material.dart';
import 'package:support_pkg/utils/extension/extension.dart';

class RoundedDropDownList extends StatelessWidget {
  final dynamic selectedValue;
  final void Function(dynamic)? onChange;
  final String? Function(dynamic)? validator;
  final List<DropdownMenuItem<dynamic>>? items;
  final double height;
  final double maxWidth;
  final double minWidth;
  final EdgeInsetsGeometry margin;
  final bool isExpanded;
  final Color bgColor;
  final String? hintText;

  const RoundedDropDownList({
    Key? key,
    required this.selectedValue,
    required this.onChange,
    required this.items,
    this.bgColor = const Color(0xffeeeeee),
    this.validator,
    this.height = 48,
    this.maxWidth = 900,
    this.minWidth = 0.0,
    this.hintText,
    this.isExpanded = false,
    this.margin = const EdgeInsets.all(0),
  })  : assert(height >= 48),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: height, maxHeight: height, minWidth: minWidth, maxWidth: maxWidth),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: DropdownButtonFormField<dynamic>(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            padding: const EdgeInsets.all(0),
            validator: validator,
            itemHeight: height,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: context.colorScheme.primaryColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: bgColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: bgColor,
                ),
              ),
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              labelText: hintText,
              fillColor: bgColor,
            ),
            dropdownColor: bgColor,
            focusColor: Colors.transparent,
            value: selectedValue,
            onChanged: onChange,
            items: items,
            isExpanded: isExpanded,
            iconSize: 20,
          ),
        ),
      ),
    );
  }
}
