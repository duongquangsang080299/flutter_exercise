import 'package:flutter/material.dart';

void main() => runApp(const LogoApp());

// AnimatedWidget subclass that represents the animated Flutter logo
class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  // Build method to define how the widget looks based on the animation value
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value, // Adjust the height based on animation value
        width: animation.value, // Adjust the width based on animation value
        child: const FlutterLogo(), // Display the Flutter logo
      ),
    );
  }
}

// Main app widget that manages the animation
class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // Create an animation controller with a duration of 2 seconds
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    // Create a tween animation that goes from 0 to 300
    animation = Tween<double>(begin: 0, end: 300).animate(controller);

    // Start the animation
    controller.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is removed
    controller.dispose();
    super.dispose();
  }
}
