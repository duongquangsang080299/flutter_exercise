import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Widgets Example'),
        ),
        body: Center(
          child: Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Hello, Flutter!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                      child: const Center(
                        child: Text('Red'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      color: Colors.green,
                      width: 50,
                      height: 50,
                      child: const Center(
                        child: Text('Green'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      color: Colors.blue,
                      width: 50,
                      height: 50,
                      child: const Center(
                        child: Text('Blue'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color: Colors.yellow,
                      width: 150,
                      height: 150,
                    ),
                    const Text(
                      'Stacked Text',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
