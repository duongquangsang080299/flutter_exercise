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
    this.showPassword = false,
    this.onTogglePassword,
    this.onChanged,
    this.hiddenSufixIcon = false,
    this.errorText,
  });

  factory SCInput.email({
    Key? key,
    FocusNode? focusNode,
    TextEditingController? controller,
    String? labelText,
    double? fontSize,
    Function(String)? onChanged,
    TextInputAction? textInputAction,
    TextStyle? labelStyle,
    String? errorText,
    TextInputType keyboardType = TextInputType.emailAddress,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
      labelText: labelText,
      fontSize: fontSize,
      onChanged: onChanged,
      errorText: errorText,
      keyboardType: keyboardType,
      contentPadding: contentPadding,
      textInputAction: textInputAction,
      obscureText: false,
      controller: controller,
      validator: (email) => InputValidationMixin.validEmail(email ?? ''),
      labelStyle: labelStyle,
    );
  }

  factory SCInput.username({
    FocusNode? focusNode,
    TextInputType keyboardType = TextInputType.name,
    TextInputAction? textInputAction,
    String? labelText,
    Function(String)? onChanged,
    String? errorText,
    TextEditingController? controller,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: keyboardType,
      onChanged: onChanged,
      labelText: labelText,
      errorText: errorText,
      textInputAction: textInputAction,
      obscureText: false,
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
    String? errorText,
    bool? showPassword = false,
    Function()? onTogglePassword,
    bool? obscureText = true,
    TextInputType keyboardType = TextInputType.visiblePassword,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
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
  final bool? showPassword;
  final Function()? onTogglePassword;
  final bool? hiddenSufixIcon;
  final String? errorText;

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
          obscureText: obscureText ?? true,
          obscuringCharacter: '●',
          style: context.textTheme.headlineSmall?.copyWith(
            fontSize: fontSize,
            color: AppColor.tertiary,
            fontWeight: AppFontWeight.regular,
          ),
          decoration: InputDecoration(
            suffixIcon: hiddenSufixIcon == true
                ? IconButton(
                    onPressed: onTogglePassword,
                    icon: showPassword!
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
