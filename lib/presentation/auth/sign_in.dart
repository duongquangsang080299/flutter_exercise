import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
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
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.getVerticalSize(87)),
              // Display Large Text
              SCText.displayLarge(
                text: context.l10n.signIn,
                context,
              ),
              const SizedBox(height: 16),
              // Title Text
              SCText.displaySmall(
                context,
                text: context.l10n.description,
              ),

              SizedBox(height: context.getVerticalSize(30)),

              // Text Form Fields for Username
              Column(
                children: [
                  SCInput.username(
                    labelText: context.l10n.labelUsername,
                    labelStyle: const TextStyle(color: AppColor.suvaGray),
                    validator: (value) => value?.isValidUserName(),
                  ),

                  const SizedBox(height: 20),

                  // Password Text Form Field
                  SCInput.password(
                    labelText: context.l10n.lablelPassword,
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
                  context.go(AppRoutes.playerPage.path);
                },
                text: context.l10n.btnLogin,
                style: context.textTheme.displayMedium?.copyWith(
                  fontWeight: AppFontWeight.semiBold,
                ),
                backgroundColor: AppColor.primary,
                height: context.getVerticalSize(60),
                borderRadius: 30,
              ),

              const SizedBox(height: 16),

              // Body Large Text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.forgotPassword,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.textDimGray,
                      ),
                    ),
                    TextSpan(
                      text: context.l10n.resetHere,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.primary,
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
