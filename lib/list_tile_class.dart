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
          title: const Text('ListTile Example'),
        ),
        body: const MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.star),
          title: const Text('Star'),
          subtitle: const Text('Tap to favorite'),
          trailing: const Icon(Icons.favorite_border),
          onTap: () {
            // Add your onTap logic here
          },
        ),
        ListTile(
          leading: const Icon(Icons.mail),
          title: const Text('Mail'),
          subtitle: const Text('Tap to open mail'),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Add your onTap logic here
          },
        ),
        // Add more ListTiles as needed
      ],
    );
  }
}
