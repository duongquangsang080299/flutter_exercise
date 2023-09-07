import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/extention.dart';

class SCText extends StatelessWidget {
  /// Constructor for SCText widget.
  const SCText({
    required this.text,
    this.style,
    this.textAlign,
    this.overflow,
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
      style: style ?? context.textThemeData.bodyLarge,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
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

  /// Factory constructor to create Medium Text .
  factory SCText.titleMedium(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? context.textThemeData.titleMedium,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Small Text .
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

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
