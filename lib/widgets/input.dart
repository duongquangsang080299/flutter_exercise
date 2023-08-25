import 'package:flutter/material.dart';

class SCTextFormField extends StatefulWidget {
  const SCTextFormField({
    required this.hintText,
    required this.labelText,
    super.key,
    this.focusNode,
    this.errorMessage,
    this.isPassword = false,
  });

  /// Error message to display if validation fails
  final String? errorMessage;

  /// Indicates whether this text field is for a password
  final bool? isPassword;

  /// Hint text displayed when the field is empty
  final String hintText;

  /// Label text displayed above the field
  final String labelText;

  /// Focus node to control focus behavior of the text field
  final FocusNode? focusNode;

  @override
  State<SCTextFormField> createState() => _SCTextFormFieldState();
}

class _SCTextFormFieldState extends State<SCTextFormField> {
  // Whether the password visibility is toggled
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,

        // Display the label text
        labelText: widget.labelText,

        // Define text style for the label to match the design
        labelStyle: const TextStyle(color: Colors.red),

        // Define text style to match the design
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),

        // Show the password visibility icon if it's a password field
        suffixIcon: (widget.isPassword ?? false)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle password visibility
                    _passwordVisible = !_passwordVisible;
                  });
                },
                child: Icon(
                  // Display the appropriate visibility icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : const SizedBox.shrink(),
      ),

      // Associate the focus node with this text field
      focusNode: widget.focusNode,
      // Validate the text input
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.errorMessage;
        }
        return null;
      },
      // If it's a password field, use the password visibility state
      obscureText: widget.isPassword! && !_passwordVisible,
    );
  }
}
