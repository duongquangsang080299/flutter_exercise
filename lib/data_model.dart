import 'package:flutter/material.dart';

class OnBoard {
  OnBoard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  final List<OnBoard> demo_data = [
    OnBoard(
      image: 'assets/images/clogo.png',
      title: 'Good Afternoon',
      description: 'Lorem ipsum dolor sit amet, consectetur '
          ' adipiscing elit, sed do eiusmod tempor '
          ' incididunt ut labore et dolore magna aliqua',
      subtitle: 'Welcome Back',
    ),
    OnBoard(
      image: 'assets/images/clogo.png',
      title: 'Good Afternoon',
      description: 'Lorem ipsum dolor sit amet, consectetur '
          ' adipiscing elit, sed do eiusmod tempor '
          ' incididunt ut labore et dolore magna aliqua',
      subtitle: 'Welcome Back',
    ),
    OnBoard(
      image: 'assets/images/clogo.png',
      title: 'Good Afternoon',
      description: 'Lorem ipsum dolor sit amet, consectetur '
          ' adipiscing elit, sed do eiusmod tempor '
          ' incididunt ut labore et dolore magna aliqua',
      subtitle: 'Welcome Back',
    ),
    OnBoard(
      image: 'assets/images/clogo.png',
      title: 'Good Afternoon',
      description: 'Lorem ipsum dolor sit amet, consectetur '
          ' adipiscing elit, sed do eiusmod tempor '
          ' incididunt ut labore et dolore magna aliqua',
      subtitle: 'Welcome Back',
    ),
  ];

  final String image;
  final String title;
  final String subtitle;
  final String description;
}