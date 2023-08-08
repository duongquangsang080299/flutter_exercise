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
            // SliverPersistentHeader widget
            SliverPersistentHeader(
              delegate: MyPersistentHeaderDelegate(),
              pinned: true, // Whether the header should be pinned
            ),
            // Other slivers (e.g., SliverList or SliverGrid) can follow here.
          ],
        ),
      ),
    );
  }
}

class MyPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // Build and return the persistent header content
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text('Sticky Header'),
    );
  }

  @override
  double get maxExtent => 100; // Maximum height of the header

  @override
  double get minExtent => 50; // Minimum height of the header

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false; // Whether to rebuild the header when something changes
  }
}
