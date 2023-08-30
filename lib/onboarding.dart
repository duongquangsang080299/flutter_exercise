import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/card.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SCCard.matchCard(title: '123', subtitle: '123',),
          // // Logo
          // SizedBox(
          //   width: 243,
          //   height: 309,
          //   child: Image.asset('assets/images/clogo.png'),
          // ),

          // const SizedBox(height: 20),

          // // Display Large Text
          // const Text(
          //   'Good Afternoon!',
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),

          // const SizedBox(height: 10),

          // // Display Medium Text
          // const Text(
          //   'Welcome Back',
          //   style: TextStyle(fontSize: 18),
          // ),

          // const SizedBox(height: 20),

          // // Title Description Text
          // const Text(
          //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
          //   style: TextStyle(fontSize: 18),
          // ),

          // const SizedBox(height: 30),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SCOutlinedButton(
          //       text: 'Outlined Button',
          //       onPressed: () {
          //         // Add your button's onPressed logic here
          //       },
          //       borderColor: Colors.blue, // Customize the border color
          //       backgroundColor: Colors.white, // Customize the background color
          //       textColor: Colors.blue, // Customize the text color
          //       width: 154,
          //       height: 60, // Customize the width
          //     ),
          //     const SizedBox(width: 20),
          //     SCButton(
          //         text: 'Contained Button',
          //         onPressed: () {
          //           // Add your button's onPressed logic here
          //         },
          //         backgroundColor:
          //             Colors.blue, // Customize the background color
          //         textColor: Colors.white, // Customize the text color
          //         width: 150,
          //         height: 60 // Customize the width
          //         ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
