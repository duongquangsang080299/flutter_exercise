import 'package:flutter/material.dart';

// Define a base card widget
class SCCard extends StatelessWidget {
  // Constructor for the base card
  const SCCard({required this.title, required this.subtitle, super.key,
    this.avatar,
    this.iconData,
    this.onPressed,
    this.height,
    this.width,
    this.elevation,
    this.color,
  });

  // Factory method to create an image card
  factory SCCard.imageCard({
    required String title,
    required String subtitle,
    required double width,
    required double height,
    required DecorationImage avatar,
  }) {
    return _ImageCard(
      title: title,
      subtitle: subtitle,
      width: width,
      height: height,
      avatar: avatar,
    );
  }

  // Factory method to create a match card
  factory SCCard.matchCard({
    required String title,
    required String subtitle,
    IconData? iconData,
    VoidCallback? onPressed,
  }) {
    return _MatchCard(
      title: title,
      subtitle: subtitle,
      iconData: iconData,
      onPressed: onPressed,
    );
  }

  // Properties of the base card
  final String title;
  final String subtitle;
  final DecorationImage? avatar;
  final double? height;
  final double? width;
  final IconData? iconData;
  final VoidCallback? onPressed;
  final double? elevation;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 4,
      color: color ?? Theme.of(context).colorScheme.tertiary,
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            Text(title),
            const SizedBox(height: 20),
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}

// Subclass for image cards
class _ImageCard extends SCCard {
  const _ImageCard({
    required super.title,
    required super.subtitle,
    required double super.width,
    required double super.height,
    required DecorationImage super.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).colorScheme.tertiary,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: avatar,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Column(
          children: [
            Text(title),
            const SizedBox(height: 20),
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}

// Subclass for match cards
class _MatchCard extends SCCard {
  const _MatchCard({
    required super.title,
    required super.subtitle,
    IconData? iconData,
    VoidCallback? onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).colorScheme.tertiary,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
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
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(''), // Add asset path here
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(''),
                        Text(''),
                      ],
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.email, color: Colors.amber),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(''),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 63, 61, 61),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.amber),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(''),
                        Text(''),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
