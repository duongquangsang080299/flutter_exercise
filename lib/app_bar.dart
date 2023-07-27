import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          /*The actions property of the AppBar takes a list of widgets that 
          represent action items to be displayed on the right side of the AppBar*/
          actions: [
            //The IconButton widget is a simple button that displays an icon and responds to tap events
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Code to handle search action
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Code to handle settings action
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
