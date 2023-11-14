import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/utils.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class SCInput extends StatelessWidget with InputValidationMixin {
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
    this.obscuringCharacter,
    this.fontSize,
    this.onChanged,
  });

  factory SCInput.email({
    FocusNode? focusNode,
    TextInputType keyboardType = TextInputType.emailAddress,
    String? labelText,
    TextInputAction? textInputAction,
    EdgeInsetsGeometry? contentPadding,
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? obscureText = false,
    TextStyle? labelStyle,
  }) {
    return SCInput(
      focusNode: focusNode,
      labelText: labelText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      obscureText: obscureText,
      validator: (email) => InputValidationMixin.validEmail(email ?? ''),
      contentPadding: contentPadding,
      controller: controller,
      labelStyle: labelStyle,
    );
  }

  factory SCInput.username({
    FocusNode? focusNode,
    TextInputType keyboardType = TextInputType.name,
    TextInputAction? textInputAction,
    String? labelText,
    TextEditingController? controller,
    bool? obscureText = false,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: keyboardType,
      labelText: labelText,
      textInputAction: textInputAction,
      obscureText: obscureText,
      controller: controller,
      validator: (username) =>
          InputValidationMixin.validUserName(username ?? ''),
      contentPadding: contentPadding,
      labelStyle: labelStyle,
    );
  }

  factory SCInput.password({
    Key? key,
    FocusNode? focusNode,
    Widget? suffixIcon,
    TextEditingController? controller,
    String? labelText,
    String? obscuringCharacter,
    double? fontSize,
    Function(String)? onChanged,
    TextStyle? labelStyle,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.visiblePassword,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
      labelText: labelText,
      obscureText: obscureText,
      fontSize: fontSize,
      suffixIcon: suffixIcon,
      onChanged: onChanged,
      keyboardType: keyboardType,
      contentPadding: contentPadding,
      obscuringCharacter: obscuringCharacter,
      controller: controller,
      validator: (password) =>
          InputValidationMixin.validPassword(password ?? ''),
      labelStyle: labelStyle,
    );
  }

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
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
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
          validator: validator,
          controller: controller,
          obscureText: obscureText ?? false,
          obscuringCharacter: '●',
        ),
      ],
    );
  }
}
