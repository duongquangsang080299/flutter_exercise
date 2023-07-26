import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Badge Example'),
        ),
        body: const Center(
          child: Badge(
            value: '15',
            child: Icon(Icons.notifications),
          ),
        ),
      ),
    );
  }
}

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color badgeColor;
  final TextStyle textStyle;
  final double size;

  const Badge({
    super.key,
    required this.child,
    required this.value,
    this.badgeColor = Colors.red,
    this.textStyle = const TextStyle(color: Colors.white),
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        if (value.isNotEmpty)
          Positioned(
            right: -6,
            top: -6,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: badgeColor,
                shape: BoxShape.circle,
              ),
              constraints: BoxConstraints(
                minWidth: size,
                minHeight: size,
              ),
              child: Center(
                child: Text(
                  value,
                  style: textStyle,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
