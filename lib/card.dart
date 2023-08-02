import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCardWidget(),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Example'),
      ),
      body: Center(
        child: Card(
          elevation: 4, // The amount of elevation (shadow) for the card
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10), // Rounded corners for the card
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(
                'https://images.pexels.com/photos/17327539/pexels-photo-17327539/free-photo-of-th-i-trang-nh-ng-ng-i-sang-tr-ng-qu-n-ao.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load', // Replace with your image URL
                height: 200,
                width: double
                    .infinity, // The image takes the full width of the card
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Flutter Card Example',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'This is a simple card example in Flutter.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
