import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text('Item ${index + 1}'),
              );
            },
            childCount: 20, // Total number of items in the list
          ),
        ));
  }
}
