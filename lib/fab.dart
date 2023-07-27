import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FAB Example'),
        ),
        body: const Center(
          child: Text('Main Content'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your FAB's click logic here
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
