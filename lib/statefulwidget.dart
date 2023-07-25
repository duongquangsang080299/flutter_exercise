import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Create class statefulwidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Add createState()method and return _MyAppState
  @override
  State<MyApp> createState() => _MyAppState();
}

// Create a new class extends the State and in particular the State of MyApp
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Hello World'),
            ),
            body: const Center(
              child: Text('Hello World'),
            )));
  }
}
