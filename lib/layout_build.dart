import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyResponsiveWidget(),
    );
  }
}

class MyResponsiveWidget extends StatelessWidget {
  const MyResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout Example'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // For larger screens (width > 600), display a different layout
            return Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Large Screen Layout',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            );
          } else {
            // For smaller screens (width <= 600), display a different layout
            return Container(
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text(
                'Small Screen Layout',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }
        },
      ),
    );
  }
}
