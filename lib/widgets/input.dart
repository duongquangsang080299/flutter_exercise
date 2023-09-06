import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SCInput extends StatelessWidget {
  const SCInput({
    super.key, // Use Key? key instead of super.key.
    this.focusNode,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.labelText,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.contentPadding,
  });

  /// Factory constructor for email input
  factory SCInput.email({
    FocusNode? focusNode,
    TextInputType? keyboardType,
    String? labelText,
    String? Function(String?)? validator,
    TextInputAction? textInputAction,
   
  }) {
    return SCInput(
      focusNode: focusNode,
      labelText: labelText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
    );
  }

  /// Factory constructor for username input
  factory SCInput.username({
    FocusNode? focusNode,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    String? Function(String?)? validator,
    String? labelText,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: keyboardType,
      labelText: labelText,
      validator: validator,
      textInputAction: textInputAction,
    );
  }

  /// Factory constructor for password input
  factory SCInput.password({
    Key? key,
    FocusNode? focusNode,
    Widget? suffixIcon,
    String? labelText,
    String? Function(String?)? validator,
    bool obscureText = false, // Set default value to false.
    TextInputType? keyboardType,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
      labelText: labelText,
      obscureText: obscureText,
      validator: validator,
      suffixIcon: suffixIcon,
      keyboardType: keyboardType,
      contentPadding: contentPadding,
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
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SCText.bodyLarge(context, text: labelText ?? ''),
        const SizedBox(height: 10),
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
