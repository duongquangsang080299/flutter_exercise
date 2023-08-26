import 'package:flutter/material.dart';

class SCListView extends StatelessWidget {
  const SCListView({
    required this.height,
    required this.width,
    required this.itemCount,
    super.key,
  });

  /// Height of each container
  final double? height;

  /// Width of each container
  final double? width;

  /// Number of containers to create
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Scroll horizontally
      scrollDirection: Axis.horizontal,
      // Use the provided itemCount
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(
          // Use the provided width
          width: width,
          // Use the provided height
          height: height,
          margin:
              // Add some spacing between containers
              const EdgeInsets.all(8),
          decoration: BoxDecoration(
            // Customize the color
            color: Colors.blue,
            // Add rounded corners
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}
