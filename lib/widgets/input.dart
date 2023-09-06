import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SCInput extends StatelessWidget {
  const SCInput({
    super.key, 
    this.focusNode,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.labelText,
    this.obscureText = true,
    this.controller,
    this.validator,
    this.contentPadding,
    this.labelStyle,
  });

  /// Factory constructor for email input
  factory SCInput.email({
    FocusNode? focusNode,
    TextInputType keyboardType = TextInputType.emailAddress,
    String? labelText,
    TextInputAction? textInputAction,
    String? Function(String?)? validator,
    bool? obscureText = false,
    TextStyle? labelStyle,
  }) {
    return SCInput(
      focusNode: focusNode,
      labelText: labelText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      labelStyle: labelStyle,
    );
  }

  /// Factory constructor for username input
  factory SCInput.username({
    FocusNode? focusNode,
    TextInputType keyboardType = TextInputType.name,
    TextInputAction? textInputAction,
    String? labelText,
    String? Function(String?)? validator,
    bool? obscureText = false,
    TextStyle? labelStyle,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: keyboardType,
      labelText: labelText,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      labelStyle: labelStyle,
    );
  }

  /// Factory constructor for password input
  factory SCInput.password({
    Key? key,
    FocusNode? focusNode,
    Widget? suffixIcon,
    String? labelText,
    TextStyle? labelStyle,
    String? Function(String?)? validator,
    bool obscureText = false, 
    TextInputType keyboardType = TextInputType.visiblePassword,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
      labelText: labelText,
      obscureText: obscureText,
      suffixIcon: suffixIcon,
      keyboardType: keyboardType,
      contentPadding: contentPadding,
      validator: validator,
      labelStyle: labelStyle,
    );
  }

  /// Properties

  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final String? labelText;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText?.isNotEmpty ?? false) ...[
          SCText.bodyLarge(context, text: labelText ?? ''),
          const SizedBox(height: 10),
        ],
        TextFormField(
          style: Theme.of(context).textTheme.titleLarge,
          decoration: InputDecoration(
            suffixIcon: suffixIcon ?? const SizedBox.shrink(),
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
          ),
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          focusNode: focusNode,
          validator: validator,
          controller: controller,
          obscureText: obscureText ?? false,
        ),
      ],
    );
  }
}
