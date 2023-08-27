import 'package:flutter/material.dart';

/// Define TextFormField widget with common properties
class SCTextFormField extends StatelessWidget {
  // Constructor for SCTextFormField
  const SCTextFormField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.validator,
    super.key,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  /// Properties
  /// Controller for text input
  final TextEditingController controller;

  /// Label text for the input field
  final String labelText;

  /// Hint text for the input field
  final String hintText;

  /// Validation function for the input
  final FormFieldValidator<String> validator;

  /// Keyboard type for input (default: text)
  final TextInputType keyboardType;

  /// Whether input is obscured (default: not obscured)
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    /// This widget builds a TextFormField with provided properties
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}

/// Subclass of SCTextFormField for handling usernames
class SCUsernameField extends SCTextFormField {
  const SCUsernameField({
    // Inherits controller from parent
    required super.controller,
    // Inherits validator from parent
    required super.validator,
    super.key,
  }) : super(
          // Default label text
          labelText: 'Username',
          // Default hint text
          hintText: 'Enter your username',
        );

  /// Factory method to create an instance with default properties
  factory SCUsernameField.create({
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
  }) {
    return SCUsernameField(
      controller: controller ?? TextEditingController(),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a username';
            }
            return null;
          },
    );
  }
}

/// Subclass of SCTextFormField for handling passwords
class SCPasswordField extends SCTextFormField {
  const SCPasswordField({
    // Inherits controller from parent
    required super.controller,
    // Inherits validator from parent
    required super.validator,
    super.key,
  }) : super(
          // Default label text
          labelText: 'Password',
          // Default hint text
          hintText: 'Enter your password',
          // Password input is obscured
          obscureText: true,
        );
  // Factory method to create an instance with default properties
  factory SCPasswordField.create({
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
  }) {
    return SCPasswordField(
      controller: controller ?? TextEditingController(),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters long';
            }
            return null;
          },
    );
  }
}
