// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/utils/theme_consts.dart';

class CustomLoginFormField extends StatefulWidget {
  final double? height;
  final EdgeInsetsGeometry contentPadding;
  final String? hintText;
  final Widget? preIcon;
  final Widget? sufIcon;
  final TextEditingController? controller;
  final bool readOnly;
  final GestureTapCallback? onTap;
  final bool last;
  final bool password;
  final bool phone;
  final double? borderRadius;
  final bool validator;
  final bool phoneHint;
  final String? confirmationPassword;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final bool numbers;
  final bool halfField;
  final int? maxLength;
  final bool maxLengthHint;
  final FocusNode? focusNode;
  @override
  _CustomLoginFormFieldState createState() => _CustomLoginFormFieldState();

  const CustomLoginFormField({
    super.key,
    this.height,
    this.contentPadding = const EdgeInsets.fromLTRB(16, 0, 16, 0),
    this.hintText,
    this.preIcon,
    this.sufIcon,
    this.controller,
    this.confirmationPassword,
    this.readOnly = false,
    this.onTap,
    this.last = false,
    this.password = false,
    this.phone = false,
    this.borderRadius,
    this.validator = true,
    this.phoneHint = true,
    this.onChanged,
    this.style,
    this.numbers = false,
    this.halfField = false,
    this.maxLength,
    this.maxLengthHint = true,
    this.focusNode,
  });
}

class _CustomLoginFormFieldState extends State<CustomLoginFormField> {
  AutovalidateMode mode = AutovalidateMode.disabled;
  bool showPassword = false;
  bool clean = true;

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                widget.borderRadius ?? ThemeConstants.circularRounded),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Row(
            children: [
              Visibility(
                visible: widget.preIcon != null,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16),
                  child: widget.preIcon ?? const SizedBox(),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: !clean
                      ? const EdgeInsets.only(bottom: 8.0)
                      : EdgeInsets.zero,
                  child: SizedBox(
                    height: widget.height,
                    child: TextFormField(
                      focusNode: widget.focusNode,
                      style: widget.style,
                      autovalidateMode: mode,
                      onChanged: (s) {
                        if (widget.onChanged != null) {
                          widget.onChanged!(s);
                        }
                        setState(() {});
                      },
                      validator: widget.validator
                          ? (value) {
                              if (mode == AutovalidateMode.disabled) {
                                setState(() {
                                  mode = AutovalidateMode.onUserInteraction;
                                  clean = false;
                                });
                              }
                              if (value == null) {
                                clean = false;
                                return S.of(context).pleaseCompleteField;
                              } else if (value.isEmpty) {
                                clean = false;
                                return S.of(context).pleaseCompleteField;
                              } else if (value.length < 4 && widget.password) {
                                clean = false;
                                return S.of(context).passwordTooShort;
                              } else {
                                clean = true;
                                return null;
                              }
                            }
                          : null,
                      onTap: widget.onTap,
                      controller: widget.controller,
                      readOnly: widget.readOnly,
                      keyboardType: widget.phone | widget.numbers
                          ? TextInputType.phone
                          : null,
                      obscureText: widget.password && !showPassword,
                      onEditingComplete:
                          widget.last ? null : () => node.nextFocus(),
                      onFieldSubmitted:
                          widget.last ? (_) => node.unfocus() : null,
                      textInputAction:
                          widget.last ? null : TextInputAction.next,
                      maxLength: widget.maxLength != null
                          ? (widget.maxLength ?? 4)
                          : null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintText: widget.hintText,
                        enabledBorder: InputBorder.none,
                        contentPadding: widget.contentPadding,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !widget.password,
                replacement: IconButton(
                    focusNode: FocusNode(skipTraversal: true),
                    splashRadius: 18,
                    splashColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    onPressed: () {
                      if (showPassword) {
                        showPassword = false;
                      } else {
                        showPassword = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      !showPassword
                          ? Icons.remove_red_eye_rounded
                          : Icons.visibility_off_rounded,
                      color: Theme.of(context).disabledColor,
                    )),
                child: widget.sufIcon ?? const SizedBox(),
              )
            ],
          ),
        ),
        Visibility(
          visible: widget.maxLength != null && widget.maxLengthHint,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 8),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                '${widget.controller?.text.length ?? 0}/${(widget.maxLength ?? 9).toString()}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Theme.of(context).disabledColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
