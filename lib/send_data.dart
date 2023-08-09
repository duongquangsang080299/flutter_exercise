import 'package:flutter/material.dart';

// Define the Arguments Class
class ScreenArguments {
  final String title;
  final int value;

  ScreenArguments(this.title, this.value);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sending Data Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Step 2: Navigate to the New Screen and Send Data
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewScreen(
                  arguments: ScreenArguments('Example Title', 42),
                ),
              ),
            );
          },
          child: const Text('Go to New Screen'),
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  final ScreenArguments arguments;

  // Constructor to receive the data
  const NewScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(arguments.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received Value: ${arguments.value}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Go back to the previous screen
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
