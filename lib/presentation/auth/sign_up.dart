import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/signIn');
          },
          child: SCIcon.back(
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.getVerticalSize(24)),
              SCText.displayLarge(
                context,
                text: context.l10n.textCreateAccount,
              ),

              SizedBox(height: context.getVerticalSize(30)),

              // Title Text
              SCText.displaySmall(
                context,
                style: context.textTheme.displaySmall,
                text: context.l10n.textDescription,
              ),

              const SizedBox(height: 20),

              // Text Form Fields for Username and Password
              Column(
                children: [
                  SCInput.username(
                    labelText: context.l10n.textUsername,
                    labelStyle:
                        const TextStyle(color: AppColor.whiteSmokeColor),
                    validator: (value) => value?.isValidUserName(),
                  ),

                  const SizedBox(height: 20),
                  SCInput.email(
                    labelText: context.l10n.textEmail,
                    labelStyle:
                        const TextStyle(color: AppColor.whiteSmokeColor),
                    validator: (value) => value?.isValidEmail(),
                  ),

                  const SizedBox(height: 20),

                  // Password Text Form Field
                  SCInput.password(
                    labelText: context.l10n.textPassword,
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
              SizedBox(height: context.getVerticalSize(30)),

              // Sign-Up Button
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: context.getHorizontalSize(318),
                    child: SCButton(
                      onPressed: () {
                        final form = _formKey.currentState ?? FormState();
                        if (form.validate()) {
                          debugPrint('Form is valid');
                        } else {
                          debugPrint('Form is invalid');
                        }
                      },
                      text: context.l10n.buttonSignUp,
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: AppFontWeight.semiBold,
                              ),
                      backgroundColor: AppColor.jetBlackColor,
                      borderRadius: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.getVerticalSize(30)),
              // Body Large Text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By tapping “Sign Up” you accept our',
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
