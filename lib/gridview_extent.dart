import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.extent Example'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0, // Maximum width of each grid item
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
        children: List.generate(20, (index) {
          return Container(
            color: Colors.purple,
            child: Center(child: Text('Item $index')),
          );
        }),
      ),
    );
  }
}
