// Import the math library with an alias to use math.pi for calculations
import 'dart:math' as math;

// Import the Flutter framework
import 'package:flutter/material.dart';

// Entry point of the application
void main() => runApp(const AnimatedBuilderExampleApp());

// A StatelessWidget that represents the root of the app
class AnimatedBuilderExampleApp extends StatelessWidget {
  const AnimatedBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the entire app with MaterialApp
    return const MaterialApp(
      home: AnimatedBuilderExample(), // Set the home to AnimatedBuilderExample
    );
  }
}

// A StatefulWidget that represents the main part of the app
class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

// State class for the AnimatedBuilderExample
class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  // Create an AnimationController that repeats its animation
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10), // Duration for each animation cycle
    vsync: this, // Use this TickerProvider for vsync
  )..repeat(); // Repeat the animation indefinitely

  @override
  Widget build(BuildContext context) {
    // Return an AnimatedBuilder widget that animates its child based on the controller
    return AnimatedBuilder(
      animation: _controller, // Set the animation to the controller
      child: Container(
        width: 50.0,
        height: 50.0,
        color: Colors.orange,
        child: const Center(
          child: Text(
            'Flutter!', // Display the text "Flutter!"
            style: TextStyle(
                fontSize: 50, color: Color.fromARGB(255, 250, 249, 249)),
          ),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        // In the builder function, apply a rotation to the child based on the animation value
        return Transform.rotate(
          angle: _controller.value *
              2.0 *
              math.pi, // Rotate based on animation value
          child: child, // Return the child after applying the rotation
        );
      },
    );
  }

  @override
  void dispose() {
    // Dispose of the AnimationController when the widget is removed
    _controller.dispose();
    super.dispose();
  }
}
