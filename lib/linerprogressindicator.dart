import 'dart:async';

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
          title: const Text('LinearProgressIndicator Example'),
        ),
        body: const Center(
          child: MyProgressWidget(),
        ),
      ),
    );
  }
}

class MyProgressWidget extends StatefulWidget {
  const MyProgressWidget({super.key});

  @override
  _MyProgressWidgetState createState() => _MyProgressWidgetState();
}

class _MyProgressWidgetState extends State<MyProgressWidget> {
  double _progressValue = 0.0;
  final double _maxValue = 100.0;

  void simulateProgress() {
    setState(() {
      _progressValue += 10.0;
      if (_progressValue > _maxValue) {
        _progressValue = 0.0;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // Simulate progress using a timer (for demonstration purposes)
    Timer.periodic(const Duration(seconds: 1), (timer) {
      simulateProgress();
    });
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: _progressValue / _maxValue,
      minHeight: 10,
      backgroundColor: Colors.grey[300],
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
    );
  }
}
