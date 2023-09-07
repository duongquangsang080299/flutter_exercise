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
      body: Form(
        key: _formKey,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.getHorizontalSize(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.getVerticalSize(100)),
              GestureDetector(
                onTap: () {
                  context.go('/signIn');
                },
                child: SCIcon.back(color: Colors.black, size: 24),
              ),
              const SizedBox(height: 50),
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
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                  } else {
                    debugPrint('Form is invalid');
                  }
                },
                text: context.l10n.buttonSignUp,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: AppFontWeight.semiBold,
                    ),
                backgroundColor: AppColor.jetBlackColor,
                width: context.getHorizontalSize(318),
                height: context.getVerticalSize(60),
                borderRadius: 30,
              ),
              SizedBox(height: context.getVerticalSize(30)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.textSignUp,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: context.l10n.textTerms,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.primaryColor,
                          ),
                    ),
                    TextSpan(
                      text: context.l10n.textAnd,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: context.l10n.textcondition,
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
