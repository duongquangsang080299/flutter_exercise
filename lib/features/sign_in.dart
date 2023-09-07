import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
import 'package:soccer_club_app/utils/validator_util.dart';
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
          padding:
              EdgeInsets.symmetric(horizontal: context.getHorizontalSize(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.getVerticalSize(87)),
              // Display Large Text
              SCText.displayLarge(
                text: context.l10n.textSignIn,
                context,
                style: context.textTheme.displayLarge,
              ),

              SizedBox(height: context.getVerticalSize(34)),

              // Title Text
              SCText.displaySmall(
                context,
                style: context.textTheme.displaySmall,
                text:context.l10n.textDescription,
              ),

              const SizedBox(height: 20),

              // Text Form Fields for Username
              Column(
                children: [
                  SCInput.username(
                    labelText:context.l10n.textUsername,
                    labelStyle:
                        const TextStyle(color: AppColor.whiteSmokeColor),
                    validator: (value) => value?.isValidUserName(),
                  ),

                  const SizedBox(height: 20),

                  // Password Text Form Field
                  SCInput.password(
                    labelText:context.l10n.textPassword,
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

              // Sign-In Button
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                  } else {
                    debugPrint('Form is invalid');
                  }
                  GoRouter.of(context).go('/playerPage');
                },
                text:context.l10n.loginButton,
                style: context.textTheme.displayMedium?.copyWith(
                  fontWeight: AppFontWeight.semiBold,
                ),
                backgroundColor: AppColor.primaryColor,
                width: context.getHorizontalSize(318),
                height: context.getVerticalSize(60),
                borderRadius: 30,
              ),

              const SizedBox(height: 20),

              // Body Large Text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:context.l10n.textForgotPassword,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.textDimGray,
                      ),
                    ),
                    TextSpan(
                      text:context.l10n.textReset,
                      style: context.textTheme.titleSmall?.copyWith(
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
