import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? showPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 130),
            // Display Large Text
            SCText.bodyLarge(
              context,
              text: 'Sign In',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: AppColor.primaryColor),
            ),

            const SizedBox(height: 30),

            // Title Text
            Text(
              'Amet minim mollit non deserunt ullamcoei italiqua dolor'
              ' do amet sintelit officia.',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 20),

            // Text Form Fields for Username and Password
            Column(
              children: [
                SCInput.username(
                  labelText: 'Username',

                  // focusNode: usernameFocus,
                ),

                const SizedBox(height: 20),

                // Password Text Form Field
                SCInput.password(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPassword = !(showPassword ?? false);
                      });
                    },
                  ),
                  obscureText: showPassword ?? true,
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
              width: double.infinity, // Takes the full width of the screen
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
