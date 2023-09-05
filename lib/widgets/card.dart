import 'package:flutter/material.dart';

/// Define Card Avata
class SCCard extends StatelessWidget {
  const SCCard({
    this.color,
    super.key,
    this.width,
    this.height,
    this.child,
    this.shape,
    this.hoverColor,
  });

  /// Factory constructor for creating a simple box card.
  factory SCCard.box({
    ShapeBorder? shape,
    Color? color,
    Widget? child,
  }) {
    return SCCard(
      color: color,
      shape: shape,
      child: child,
    );
  }

  /// Factory constructor for creating a card with an avatar
  factory SCCard.avatar({
    ShapeBorder? shape,
    Widget? child,
    Color? hoverColor,
    
  }) {
    return SCCard(
      shape: shape,
      hoverColor: hoverColor,
      child: child,
    );
  }

  /// Factory constructor for creating a card with an score
  factory SCCard.score({
    ShapeBorder? shape,
    Widget? child,
  }) {
    return SCCard(
      shape: shape,
      child: child,
    );
  }

  // The background color of the card.
  final Color? color;
  // The width of the card.
  final double? width;
  // The height of the card.
  final double? height;
  // The child widget to be placed inside the card.
  final ShapeBorder? shape;
  final Color? hoverColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        shape: shape,
        color: color,
        child: child,
      ),
    );
  }
}

/// Define Box Card
class SCBoxCard extends StatelessWidget {
  const SCBoxCard({
    required this.title,
    required this.subtitle,
    super.key,
    this.width,
    this.height,
    this.avatarImage,
    this.color,
    this.borderColor,
    this.child,
  });

  factory SCBoxCard.newsCard({
    required String title,
    required String subtitle,
    double? width,
    double? height,
    DecorationImage? avatarImage,
    Color? color,
    Color? borderColor,
  }) {
    return SCBoxCard(
      title: title,
      subtitle: subtitle,
      width: width,
      height: height,
      avatarImage: avatarImage,
      color: color,
      borderColor: borderColor,
    );
  }

  factory SCBoxCard.tickesCard({
    required String title,
    required String subtitle,
    double? width,
    double? height,
    Color? color,
    Color? borderColor,
  }) {
    return SCBoxCard(
      title: title,
      subtitle: subtitle,
      width: width,
      height: height,
      color: color,
      borderColor: borderColor,
    );
  }

  final String title;
  final String subtitle;
  final double? width;
  final double? height;
  final DecorationImage? avatarImage;
  final Color? color;
  final Color? borderColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          image: avatarImage,
          border: Border.all(
            color: borderColor ?? Colors.white,
          ),
        ),
        child: child,
      ),
    );
  }
}

/// Define MatchCard
class SCMatchCard extends StatelessWidget {
  const SCMatchCard({
    required this.title,
    this.subtitle,
    super.key,
    this.height,
    this.width,
    this.child,
    this.color,
    this.elevation,
    this.shadowColor,
    this.iconData,
    this.shape,
  });

  factory SCMatchCard.nextMatch({
    required String title,
    required String subtitle,
    double? width,
    double? height,
    Color? color,
    double? elevation,
    Color? shadowColor,
    Icon? iconData,
    ShapeBorder? shape,
  }) {
    return SCMatchCard(
      title: title,
      subtitle: subtitle,
      width: width,
      height: height,
      color: color,
      elevation: elevation,
      shadowColor: shadowColor,
      iconData: iconData,
      shape: shape,
    );
  }

  factory SCMatchCard.matchs({
    required String title,
    double? width,
    double? height,
    ShapeBorder? shape,
    Icon? iconData,
    Color? shadowColor,
    Color? color,
    double? elevation,
  }) {
    return SCMatchCard(
      title: title,
      width: width,
      height: height,
      color: color,
      elevation: elevation,
      shadowColor: shadowColor,
      iconData: iconData,
      shape: shape,
    );
  }

  final String title;
  final String? subtitle;
  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  final double? elevation;
  final Color? shadowColor;
  final Icon? iconData;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      child: Card(
        color: color ?? Colors.white,
        elevation: elevation ?? 0,
        shadowColor: shadowColor,
        shape: shape,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/your_image.png'),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 21, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.amber),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 13,
                            ),
                            child: Column(
                              children: [
                                Text('123'),
                                Text('123'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Champ')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
