import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            SizedBox(
              width: 228,
              height: 212,
              child: Image.asset('assets/images/clogo.png'),
            ),

            const SizedBox(height: 20),

            // Large Text
            Text(
              'Welcome to \n Victory Greens App',
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCButtonIcon(
                  onPressed: () {GoRouter.of(context).go('/signIn');},
                  text: 'Login with email',
                  // textColor: Colors.white, // Set text color
                  // fontWeight: FontWeight.w600, // Set font weight
                ),
                const SizedBox(height: 30), // Add spacing between buttons

                // ElevatedButton (Sign Up)
                 SCButton(
                  onPressed: () {
                    GoRouter.of(context).go('/signUp');
                  },
                  text: 'Create Account',
                  backgroundColor: AppColor.primaryColor,
                  width: 154,
                  height: 60,
                  borderRadius: 20,
                  // You can add more properties as needed
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
