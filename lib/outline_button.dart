import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // scaffod widget represent a basic structure implement material design
      home: Scaffold(
        appBar: AppBar(
          //define appBar with title of 'OutlinedButton Example'
          title: const Text('OutlinedButton Example'),
        ),
        body: Center(
          // widget is created with an onPressed callback that triggers when the button is pressed.
          child: OutlinedButton(
            onPressed: () {},
            // Method is used to customize the button's appearance
            style: OutlinedButton.styleFrom(
              primary: Colors.blue, // Set the outline and text color
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // which gives the button rounded corners.
              shape: RoundedRectangleBorder(
                // The side property sets the outline's color using a
                borderRadius: BorderRadius.circular(8.0),
              ),
              side:
                  const BorderSide(color: Colors.blue), // Set the outline color
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
