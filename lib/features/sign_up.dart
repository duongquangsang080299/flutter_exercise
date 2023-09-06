import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/input.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? showPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(height: 100),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).go('/signIn');
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Create an account',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: AppColor.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
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
                SCInput.username(
                  labelText: 'Username',
                  // focusNode: usernameFocus,
                ),

                const SizedBox(height: 20),

                SCInput.email(
                  labelText: 'Email',
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
                        ).hasMatch(value)) {
                      return 'Enter';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

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
            SCButton(
              onPressed: () {
                // Handle sign-up button press
              },
              text: 'Sign Up',
              backgroundColor: AppColor.jetBlackColor,
              width: 318,
              height: 60,
              borderRadius: 30,
            ),

            const SizedBox(height: 20),

            // Body Large Text
            Text(
              'By tapping “Sign Up” you accept our terms and condition',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
