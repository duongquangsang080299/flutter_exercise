import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyListTileWidget(),
    );
  }
}

class MyListTileWidget extends StatelessWidget {
  const MyListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Example'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.email), // Icon displayed before the title
            title: const Text('Duong Sang'), // Title text of the list tile
            subtitle: const Text(
                'sang.duong@example.com'), // Subtitle text of the list tile
            trailing: const Icon(
                Icons.delete), // Icon displayed at the end of the list tile
            onTap: () {},
            onLongPress: () {},
          ),
          ListTile(
            leading: const Icon(Icons.email), // Icon displayed before the title
            title: const Text('Duong Sang'), // Title text of the list tile
            subtitle: const Text(
                'sang.duong@example.com'), // Subtitle text of the list tile
            trailing: const Icon(
                Icons.delete), // Icon displayed at the end of the list tile
            onTap: () {},
            onLongPress: () {},
          ),
          ListTile(
            leading: const Icon(Icons.email), // Icon displayed before the title
            title: const Text('Duong Sang'), // Title text of the list tile
            subtitle: const Text(
                'sang.duong@example.com'), // Subtitle text of the list tile
            trailing: const Icon(
                Icons.delete), // Icon displayed at the end of the list tile
            onTap: () {},
            onLongPress: () {},
          ),
        ],
      ),
    );
  }
}
