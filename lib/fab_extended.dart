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
          title: const Text('Extended FAB Example'),
        ),
        body: const Center(
          child: Text('Main Content'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your FAB's click logic here
          },
          /*The label property of the FloatingActionButton.extended 
          takes a Text widget that displays the label or text for the extended FAB.*/
          label: const Text('Add Item'),
          /*The `icon property of the FloatingActionButton.extended
           takes an Icon widget that displays the icon along with the label*/
          icon: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
