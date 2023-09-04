import 'package:flutter/material.dart';

class SCInput extends StatelessWidget {
  const SCInput({
    required this.labelText,
    super.key,
    this.hintText,
    this.focusNode,
    this.errorMessage,
    this.isPassword = false,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.decoration,
  });

  /// Factory constructor for password input
  factory SCInput.password({
    required String labelText,
    Key? key,
    FocusNode? focusNode,
    String? hintText,
    Widget? suffixIcon,
    bool obscureText = true, 
    InputDecoration? decoration,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      focusNode: focusNode,
      hintText: hintText,
      isPassword: true,
      suffixIcon: suffixIcon,
      obscureText: obscureText,
      decoration: decoration,
    );
  }

  /// Factory constructor for regular text input
  factory SCInput.textField({
    required String labelText,
    Key? key,
    FocusNode? focusNode,
    String? hintText,
    InputDecoration? decoration,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      focusNode: focusNode,
      hintText: hintText,
      decoration: decoration,
    );
  }

  /// Factory constructor for email input
  factory SCInput.email({
    required String labelText,
    Key? key,
    FocusNode? focusNode,
    String? hintText,
    InputDecoration? decoration,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      focusNode: focusNode,
      hintText: hintText,
      keyboardType: TextInputType.emailAddress,
      decoration: decoration,
    );
  }

  /// Properties
  final String? errorMessage;
  final bool isPassword;
  final String? hintText;
  final String labelText;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final InputDecoration? decoration;


  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        
      ),
      validator: validator,
      keyboardType: keyboardType,
      focusNode: focusNode,
      obscureText: obscureText,
     
    );
  }
}
