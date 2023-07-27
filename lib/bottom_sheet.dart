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
          title: const Text('BottomSheet Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showBottomSheet(context);
            },
            child: const Text('Show Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Take a Photo'),
              onTap: () {
                Navigator.pop(context); // Close the bottom sheet
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () {
                print('Choose from Gallery tapped');
                Navigator.pop(context); // Close the bottom sheet
              },
            ),
          ],
        ),
      );
    },
  );
}
