import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define a card widget
class SCCard extends StatelessWidget {
  const SCCard({
    required this.text,
    super.key,
    this.height,
    this.width,
  });
  final String text;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      width: 100,
      height: 120,
      child: Column(
        children: [
          const Text(
            '',
          ),
          const SizedBox(height: 20),
          SCText.bodyLarge(
            context,
            text: '',
          ),
        ],
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
    return Column(
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
                    child: Image.asset(''),
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
                      ])
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
