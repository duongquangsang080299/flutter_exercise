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
          title: const Text('TextButton Example'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.blue, // Set the text color
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Click Me',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
