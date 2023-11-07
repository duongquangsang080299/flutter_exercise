import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class SCInput extends StatelessWidget with InputValidationMixin {
  const SCInput({
    super.key,
    this.focusNode,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.labelText,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.contentPadding,
    this.labelStyle,
    this.obscuringCharacter,
    this.fontSize,
  });

  /// Factory constructor for email input
  factory SCInput.email({
    FocusNode? focusNode,
    String? Function(String?)? validator,
    EdgeInsetsGeometry? contentPadding,
    TextEditingController? controller,
    TextStyle? labelStyle,
  }) {
    return SCInput(
      focusNode: focusNode,
      labelText: '',
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: validator,
      contentPadding: contentPadding,
      controller: controller,
      labelStyle: labelStyle,
    );
  }

  /// Factory constructor for username input
  factory SCInput.username({
    FocusNode? focusNode,
    TextEditingController? controller,
    String? Function(String?)? validator,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: TextInputType.name,
      labelText: '',
      textInputAction: TextInputAction.next,
      controller: controller,
      validator: validator,
      contentPadding: contentPadding,
      labelStyle: labelStyle,
    );
  }

  /// Factory constructor for password input
  factory SCInput.password({
    FocusNode? focusNode,
    Widget? suffixIcon,
    TextEditingController? controller,
    String? obscuringCharacter,
    double? fontSize,
    TextStyle? labelStyle,
    String? Function(String?)? validator,
    bool obscureText = false,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      focusNode: focusNode,
      labelText: '',
      obscureText: obscureText,
      fontSize: fontSize,
      suffixIcon: suffixIcon,
      keyboardType: TextInputType.visiblePassword,
      contentPadding: contentPadding,
      obscuringCharacter: obscuringCharacter,
      controller: controller,
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
  final String? obscuringCharacter;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText?.isNotEmpty ?? false) ...[
          SCText.displaySmall(
            context,
            text: labelText ?? '',
            style: context.textTheme.displaySmall?.copyWith(
              color: AppColor.graysuva,
              fontWeight: AppFontWeight.medium,
            ),
          ),
          const SizedBox(height: 10),
        ],
        TextFormField(
          style: context.textTheme.displayMedium?.copyWith(
            fontSize: fontSize,
            color: AppColor.tertiary,
            fontWeight: AppFontWeight.regular,
          ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon ?? const SizedBox.shrink(),
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 1,
                ),
          ),
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          focusNode: focusNode,
          controller: controller,
          obscureText: obscureText ?? false,
          obscuringCharacter: '●',
        ),
      ],
    );
  }
}
