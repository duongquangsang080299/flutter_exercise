import 'package:flutter/material.dart';

void main() => runApp(const ImageApp());

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Image Example'),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/pexels1.png'),
          ),
        ),
      ),
    );
  }
}
