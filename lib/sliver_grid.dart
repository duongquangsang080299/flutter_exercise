import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            // SliverGrid widget
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns in the grid
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GridTile(
                    child: Card(
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    ),
                  );
                },
                childCount: 10, // Number of items in the grid
              ),
            ),
          ],
        ),
      ),
    );
  }
}
