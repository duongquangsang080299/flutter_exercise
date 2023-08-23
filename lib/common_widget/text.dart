import 'package:flutter/material.dart';

class SCDisplayLarge extends StatelessWidget {
  const SCDisplayLarge({
    required this.text,
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.lineHeight,
    this.color,
    this.fontSize,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final double? lineHeight;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 20),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SCDisplayMedium extends StatelessWidget {
  const SCDisplayMedium({
    required this.text,
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.lineHeight,
    this.color,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final double? lineHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 20),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SCBodyLarge extends StatelessWidget {
  const SCBodyLarge({
    required this.text,
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.lineHeight,
    this.color,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final double? lineHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class BodyMedium extends StatelessWidget {
  const BodyMedium({
    required this.text,
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.lineHeight,
    this.color,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final double? lineHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 20),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SCTitleMedium extends StatelessWidget {
  const SCTitleMedium({
    required this.text,
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.lineHeight,
    this.color,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final double? lineHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SCBodySmall extends StatelessWidget {
  const SCBodySmall({
    required this.text,
    super.key,
    this.textAlign,
    this.overflow,
    this.color,
  });
  final String text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 20,
            color: color,
          ),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}
