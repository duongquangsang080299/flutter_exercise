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
        body: CustomScrollView(
          slivers: <Widget>[
            // SliverAppBar widget
            SliverAppBar(
              expandedHeight: 200, // Height when expanded
              floating:
                  false, // Whether the app bar is "floating" above content
              pinned: true, // Whether the app bar is pinned to the top
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Collapsing App Bar'), // Title when collapsed
                background: Image.network(
                  // Background image when expanded
                  'https://images.pexels.com/photos/17504616/pexels-photo-17504616/free-photo-of-c-p-v-ch-ng-nh-ng-ng-i-dem-xe-h-i.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Other slivers (e.g., SliverList or SliverGrid) can follow here.
          ],
        ),
      ),
    );
  }
}
