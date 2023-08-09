import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SourceScreen(),
    );
  }
}

class SourceScreen extends StatelessWidget {
  const SourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Source Screen')),
      body: GestureDetector(
        onTap: () {
          // Navigate to the destination screen with the animated widget
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const DestinationScreen()));
        },
        child: Hero(
          tag: 'myTag', // Unique identifier for the widget
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Destination Screen')),
      body: Center(
        child: Hero(
          tag: 'myTag', // Same unique identifier used in the source screen
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
