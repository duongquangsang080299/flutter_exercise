import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/utils/validator_util.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? showPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go('/signIn');
                },
                child: SCIcon.back(color: Colors.black,size:24),
              ),
              const SizedBox(height: 50),
              SCText.displayLarge(
                context,
                text: 'Create an account ',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: AppFontWeight.semiBold,),
              ),

              const SizedBox(height: 30),

              // Title Text
              SCText.bodySmall(
                context,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColor.tertiary,
                    fontWeight: AppFontWeight.regular,),
                text: 'Amet minim mollit non deserunt ullamcoei italiqua dolor'
                    ' do amet sintelit officia.',
              ),

              const SizedBox(height: 20),

              // Text Form Fields for Username and Password
              Column(
                children: [
                  SCInput.username(
                    labelText: 'Username',
                    labelStyle:
                        const TextStyle(color: AppColor.whiteSmokeColor),
                    validator: (value) => value?.isValidUserName(),
                  ),

                  const SizedBox(height: 20),
                  SCInput.email(
                    labelText: 'Email',
                    labelStyle:
                        const TextStyle(color: AppColor.whiteSmokeColor),
                    validator: (value) => value?.isValidEmail(),
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

              // Sign-Up Button
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                  } else {
                    debugPrint('Form is invalid');
                  }
                },
                text: 'SIGN UP',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColor.secondaryColor,
                      fontWeight: AppFontWeight.semiBold,
                    ),
                backgroundColor: AppColor.jetBlackColor,
                width: 318,
                height: 60,
                borderRadius: 30,
              ),
              const SizedBox(height: 30),
              // Body Large Text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By tapping “Sign Up” you accept our ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: 'terms                      ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.primaryColor,
                          ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: 'condition',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.primaryColor,
                          ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
