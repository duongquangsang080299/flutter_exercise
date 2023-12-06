import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/utils.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class SCInput extends StatelessWidget with InputValidationMixin {
  const SCInput({
    super.key,
    this.suffixIcon,
    this.keyboardType,
    this.labelText,
    this.validator,
    this.contentPadding,
    this.labelStyle,
    this.fontSize,
    this.showPassword = false,
    this.onTogglePassword,
    this.onChanged,
    this.obscuringCharacter,
    this.hiddenSufixIcon = false,
    this.errorText,
    this.controller,
    this.obscureText,
    this.errorBoder,
  });

  /// Input of username
  factory SCInput.username({
    Key? key,
    TextInputType keyboardType = TextInputType.name,
    String? labelText,
    Function(String)? onChanged,
    TextStyle? labelStyle,
    String? errorText,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      keyboardType: keyboardType,
      labelText: labelText,
      onChanged: onChanged,
      errorText: errorText,
      validator: (username) =>
          InputValidationMixin.validUserName(username ?? ''),
      contentPadding: contentPadding,
      labelStyle: labelStyle,
    );
  }

  /// Input of email
  factory SCInput.email({
    Key? key,
    String? labelText,
    TextEditingController? controller,
    double? fontSize,
    Function(String)? onChanged,
    TextStyle? labelStyle,
    String? errorText,
    TextInputType keyboardType = TextInputType.emailAddress,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      fontSize: fontSize,
      controller: controller,
      onChanged: onChanged,
      errorText: errorText,
      keyboardType: keyboardType,
      contentPadding: contentPadding,
      validator: (email) => InputValidationMixin.validEmail(email ?? ''),
      labelStyle: labelStyle,
    );
  }

  /// Input of password
  factory SCInput.password({
    Key? key,
    Widget? suffixIcon,
    String? labelText,
    String? obscuringCharacter,
    double? fontSize,
    Function(String)? onChanged,
    TextStyle? labelStyle,
    String? errorText,
    bool? showPassword = false,
    Function()? onTogglePassword,
    bool? obscureText,
    TextInputType keyboardType = TextInputType.visiblePassword,
    EdgeInsetsGeometry? contentPadding,
    Color? errorBoder,
  }) {
    return SCInput(
        key: key,
        labelText: labelText,
        errorText: errorText,
        obscureText: obscureText,
        fontSize: fontSize,
        suffixIcon: suffixIcon,
        showPassword: showPassword,
        onChanged: onChanged,
        onTogglePassword: onTogglePassword,
        keyboardType: keyboardType,
        hiddenSufixIcon: true,
        contentPadding: contentPadding,
        validator: (password) =>
            InputValidationMixin.validPassword(password ?? ''),
        labelStyle: labelStyle,
        errorBoder: errorBoder);
  }

  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final String? labelText;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final Function(String)? onChanged;
  final bool? showPassword;
  final Function()? onTogglePassword;
  final bool? hiddenSufixIcon;
  final String? obscuringCharacter;
  final TextEditingController? controller;
  final String? errorText;
  final Color? errorBoder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText?.isNotEmpty ?? false) ...[
          SCText.displaySmall(
            context,
            text: labelText ?? '',
            style: context.textTheme.bodyLarge?.copyWith(
              color: AppColor.graysuva,
              fontWeight: AppFontWeight.medium,
            ),
          ),
          const SizedBox(height: 10),
        ],
        TextFormField(
          onChanged: (value) {
            onChanged?.call(value);
          },
          obscureText: obscureText ?? false,
          obscuringCharacter: '●',
          style: context.textTheme.headlineSmall?.copyWith(
            fontSize: fontSize,
            color: AppColor.tertiary,
            fontWeight: AppFontWeight.regular,
          ),
          decoration: InputDecoration(
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColor.graysuva),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: errorBoder ?? AppColor.primary,
              ),
            ),
            suffixIcon: hiddenSufixIcon == true
                ? IconButton(
                    onPressed: onTogglePassword,
                    icon: (showPassword ?? true)
                        ? SCIcon.hidden(
                            color: AppColor.primary,
                          )
                        : SCIcon.suffix(),
                  )
                : const SizedBox.shrink(),
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 1,
                ),
            errorText: errorText,
          ),
          keyboardType: keyboardType,
          validator: validator,
        ),
      ],
    );
  }
}
