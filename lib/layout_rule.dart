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
        appBar: AppBar(title: const Text('Constraints and Sizes Example')),
        body: const Center(
          child: ParentWidget(),
        ),
      ),
    );
  }
}

class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Fixed width of the parent container
      height: 200, // Fixed height of the parent container
      color: Colors.blue,
      child: const ChildWidget(),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Fixed width of the child container
      height: 100, // Fixed height of the child container
      color: Colors.red,
      child: const Center(
        child: Text(
          'Child',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
