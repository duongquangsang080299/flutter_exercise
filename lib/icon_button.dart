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
          title: const Text('IconButton Example'),
        ),
        body: const Center(
          child: Text('Main Content'),
        ),
        floatingActionButton: IconButton(
          onPressed: () {
            // Add your IconButton's click logic here
          },
          icon: const Icon(Icons.favorite),
          color: Colors.red,
        ),
      ),
    );
  }
}
