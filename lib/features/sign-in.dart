import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/util.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? showPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 130),
              // Display Large Text
              SCText.displayLarge(
                context,
                text: 'Sign In',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: AppFontWeight.semiBold),
              ),

              const SizedBox(height: 30),

              // Title Text
              SCText.bodySmall(
                context,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColor.textPrimary,
                    fontWeight: AppFontWeight.regular),
                text: 'Amet minim mollit non deserunt ullamcoei italiqua dolor'
                    ' do amet sintelit officia.',
              ),

              const SizedBox(height: 20),

              // Text Form Fields for Username
              Column(
                children: [
                  SCInput.username(
                    labelText: 'Username',
                    labelStyle:
                        const TextStyle(color: AppColor.whiteSmokeColor),
                    validator: (value) => value?.isValidUserName(),
                  ),

                  const SizedBox(height: 20),

                  // Password Text Form Field
                  SCInput.password(
                    labelText: 'Password',
                    validator: (input) => input?.isValidPassword(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          showPassword = !(showPassword ?? false);
                        });
                      },
                    ),
                    obscureText: showPassword ?? true,
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Sign-In Button
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                  } else {
                    debugPrint('Form is invalid');
                  }
                },
                text: 'LOGIN',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColor.backgroundColor,
                      fontWeight: AppFontWeight.semiBold,
                    ),
                backgroundColor: AppColor.primaryColor,
                width: 318,
                height: 60,
                borderRadius: 30,
              ),

              const SizedBox(height: 20),

              // Body Large Text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Forgot password?   ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: 'Reset here ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
