import 'package:flutter/material.dart';

class SCText extends StatelessWidget {
  /// Constructor for SCText widget.
  const SCText({
    required this.text,
    this.style,
    this.textAlign,
    this.overflow,
    super.key,
  });

  /// Factory constructor to create Display Text .
  factory SCText.scDisplayText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? Theme.of(context).textTheme.displayLarge,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Body Text .
  factory SCText.scBodyText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? Theme.of(context).textTheme.displayMedium,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Title Text .
  factory SCText.scTitleText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? Theme.of(context).textTheme.bodyLarge,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }

  /// Factory constructor to create Large Text .
  factory SCText.scLargeText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? Theme.of(context).textTheme.bodyLarge,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Medium Text .
  factory SCText.scMediumText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? Theme.of(context).textTheme.titleMedium,
      textAlign: textAlign,
    );
  }

  /// Factory constructor to create Small Text .
  factory SCText.scSmallText(
    BuildContext context, {
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }) {
    return SCText(
      text: text,
      style: style ?? Theme.of(context).textTheme.bodySmall,
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
