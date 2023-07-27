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
          title: const Text('FilledButton Example'),
        ),
        body: const Center(
          child: FilledButton(),
        ),
      ),
    );
  }
}

class FilledButton extends StatelessWidget {
  const FilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your button's click logic here
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // Set the button's background color
        onPrimary: Colors.white, // Set the text color
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 4.0, // Set the button's elevation (shadow)
      ),
      child: const Text(
        'Click Me',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
