import 'package:flutter/material.dart';


/// Define Card Avata 
class SCCard extends StatelessWidget {
  const SCCard({
    this.backgroundColor,
    super.key,
    this.avatarImage,
    this.width,
    this.height,
    this.boderColor,
    this.child,
  });

  /// Factory constructor for creating a simple box card.
  factory SCCard.boxCard({
    Color? backgroundColor,
    Key? key,
    DecorationImage? avatarImage,
    Widget? child,
  }) {
    return SCCard(
      backgroundColor: backgroundColor,
      key: key,
      avatarImage: avatarImage,
      child: child,
    );
  }

  /// Factory constructor for creating a card with an avatar
  factory SCCard.avatarCard({
    Color? background,
    Color? boderColor,
    double? width,
    double? height,
    DecorationImage? avatarImage,
  }) {
    return SCCard(
      backgroundColor: background,
      boderColor: boderColor,
      width: width,
      height: height,
      avatarImage: avatarImage,
    );
  }
   // The avatar image to display on the card.
  final DecorationImage? avatarImage; 
  // The background color of the card.
  final Color? backgroundColor; 
  // The width of the card.
  final double? width; 
   // The border color of the card.
  final Color? boderColor;
  // The height of the card.
  final double? height; 
  // The child widget to be placed inside the card.
  final Widget? child; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          // Set the provided avatar image as the card's background image.
          image: avatarImage, 
          border: Border.all(
            // Set the border color to the provided color or default to white.
            color: boderColor ?? Colors.white, 
          ),
        ),
         // Set the provided background color of the card.
        color: backgroundColor,
        // Set the provided child widget inside the card.
        child: child, 
      ),
    );
  }
}

