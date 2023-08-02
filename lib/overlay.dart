import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overlay Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the floating widget when the button is pressed
            showFloatingWidget(context);
          },
          child: const Text('Show Floating Widget'),
        ),
      ),
    );
  }

  void showFloatingWidget(BuildContext context) {
    // Create an OverlayEntry for the floating widget
    OverlayEntry overlayEntry = OverlayEntry(
      //the builder callback returns a Positioned widget with the floating widget's position
      builder: (context) => Positioned(
        top: 100,
        right: 16,
        child: Material(
          child: Container(
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            child: const Text(
              'Floating Widget',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );

    // Access the application's Overlay using the Overlay.of(context) method.
    OverlayState overlay = Overlay.of(context);

    // Insert the OverlayEntry into the Overlay
    // This makes the floating widget appear on top of the main content.
    overlay.insert(overlayEntry);

    // Optionally, use a Timer to remove the floating widget after a certain duration
    Timer(const Duration(seconds: 5), () {
      overlayEntry.remove();
    });
  }
}
