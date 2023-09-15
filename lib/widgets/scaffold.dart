import 'package:flutter/material.dart';

// Define class for building a custom scaffold widget
class SCScaffold extends StatelessWidget {
  // Constructor for the widget
  const SCScaffold({
    required this.body,
    super.key,
    this.appBar,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset,
  });
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;

  final bool? resizeToAvoidBottomInset;

  // Method for building the widget
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget with the specified fields
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
