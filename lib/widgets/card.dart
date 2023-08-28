import 'package:flutter/material.dart';

/// Define a card widget
class SCCard extends StatelessWidget {
  const SCCard({
    required this.text,
    required this.elevation,
    super.key,
    this.height,
    this.width,
    this.color,
  });

  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: color,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(text),
              subtitle: const Text('Subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Define an avatar widget
class SCAvatar extends StatelessWidget {
  const SCAvatar({required this.avatar, super.key, this.width, this.height});

  final DecorationImage avatar;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(image: avatar, borderRadius: BorderRadius.circular(2)),
    );
  }
}

/// Define a match card widget

class SCMatchCard extends StatelessWidget {
  const SCMatchCard({
    required this.text,
    required this.iconData,
    required this.elevation,
    super.key,
    this.width,
    this.textColor,
    this.height,
    this.size,
  });

  final String text;
  final double? width;
  final Color? textColor;
  final double? height;
  final double? size;
  final double elevation;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(iconData, size: size ?? 24, color: Colors.white),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor ?? Colors.white,
                      ),
                    ),
                    Text('Subtitle',
                        style: TextStyle(color: textColor ?? Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: height,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.email, color: Colors.white),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Todo',
                      style: TextStyle(color: textColor ?? Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
