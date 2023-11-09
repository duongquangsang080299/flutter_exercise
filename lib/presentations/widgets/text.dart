import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';

class SCText extends StatelessWidget {
  /// Constructor for SCText widget.
  const SCText({
    required this.text,
    this.style,
    this.textAlign,
    super.key,
  });

  /// Factory constructor to create Display Large Text .
  factory SCText.displayLarge(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.displayLarge,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Display Medium Text .
  factory SCText.displayMedium(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.displayMedium,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Body Large .
  factory SCText.displaySmall(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ??
          context.textThemeData.displaySmall
              ?.copyWith(color: context.colorScheme.tertiary),
      textAlign: textAlign,
    );
  }
  factory SCText.headlineLarge(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.headlineLarge,
      textAlign: textAlign,
    );
  }
  factory SCText.headlineMedium(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.headlineMedium,
      textAlign: textAlign,
    );
  }
  factory SCText.headlineSmall(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ??
          context.textThemeData.headlineSmall
              ?.copyWith(color: context.colorScheme.tertiary),
      textAlign: textAlign,
    );
  }
  factory SCText.bodyLarge(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ??
          context.textThemeData.bodyLarge
              ?.copyWith(color: context.colorScheme.tertiary),
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Body Medium Text
  factory SCText.bodyMedium(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.bodyMedium,
      textAlign: textAlign,
    );
  }
  factory SCText.bodySmall(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.bodySmall,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Medium Text .
  factory SCText.titleLarge(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.titleLarge,
      textAlign: textAlign,
    );
  }
  factory SCText.labelLarge(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.labelLarge,
      textAlign: textAlign,
    );
  }
  factory SCText.labelMedium(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.labelMedium,
      textAlign: textAlign,
    );
  }
  factory SCText.labelSmall(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.labelSmall,
      textAlign: textAlign,
    );
  }

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}