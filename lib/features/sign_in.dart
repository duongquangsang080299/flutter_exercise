import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/input.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display Large Text
            Text(
              'Sign In',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: AppColor.primaryColor),
            ),

            const SizedBox(height: 30),

            // Title Text
            Text(
              'Amet minim mollit non deserunt ullamcoei italiqua dolor do amet sintelit officia.',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 20),

            // Text Form Fields for Username and Password
            Column(
              children: [
                SCInput.textField(
                  labelText: 'Username',
                  decoration: const InputDecoration(
                    hintText: 'Enter your username',
                    border: OutlineInputBorder(),
                  ),
                  // focusNode: usernameFocus,
                ),

                const SizedBox(height: 10),

                // Password Text Form Field
                SCInput.password(
                  labelText: 'Password',
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  obscureText: true,
                  // focusNode: passwordFocus,
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Sign-In Button

            // Sign-In Button
            SCButton(
              onPressed: () {
                // Handle sign-in button press
              },
              text: 'Log In',
              backgroundColor: AppColor.primaryColor, // Customize button color
              width: 318, // Takes the full width of the screen
              height: 60, // Adjust the height as needed
              borderRadius: 30, // Customize border radius
            ),

            const SizedBox(height: 20),

            // Body Large Text
            Text(
              'Forgot Password? Reset Here',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
