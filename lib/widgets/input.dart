import 'package:flutter/material.dart';

class SCInput extends StatelessWidget {
  const SCInput({
    super.key,
    this.focusNode,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.decoration,
    this.obscureText,
  });

  /// Factory constructor for email input
  factory SCInput.email({
    FocusNode? focusNode,
    TextInputType? keyboardType,
    InputDecoration? decoration,
    TextInputAction? textInputAction,
  }) {
    return SCInput(
      focusNode: focusNode,
      decoration: decoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
    );
  }

  /// Factory constructor for usernamet input
  factory SCInput.username({
    FocusNode? focusNode,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    InputDecoration? decoration,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: decoration,
      textInputAction: textInputAction,
    );
  }

  /// Factory constructor for password input
  factory SCInput.password({
    Key? key,
    FocusNode? focusNode,
    Widget? suffixIcon,
    InputDecoration? decoration,
    bool? obscureText,
    TextInputType? keyboardType,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
      decoration: decoration,
      obscureText: obscureText,
      suffixIcon: suffixIcon,
      keyboardType: keyboardType,
    );
  }

  /// Properties

  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return TextFormField(
      decoration: decoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
    );
  }
}
