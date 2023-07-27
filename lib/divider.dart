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
          title: const Text('Divider Example'),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          Text(
            'Section 1',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 30.0,
            thickness: 2.0,
            color: Colors.blue,
          ),
          Text('Content for Section 1'),
          Divider(), // Using default height, thickness, and color
          Text(
            'Section 2',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            indent: 20.0,
            endIndent: 20.0,
            color: Colors.red,
          ), // Custom indents and color
          Text('Content for Section 2'),
        ],
      ),
    );
  }
}
