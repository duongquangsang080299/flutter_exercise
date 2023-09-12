import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

              const SizedBox(height: 16),
              SCText.displayLarge(
                text: context.l10n.signIn,
                context,
              ),

              // Title Text
              SCText.displaySmall(
                context,
                text: context.l10n.description,
              ),

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

              // Sign-In Button
              const SizedBox(height: 30),
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                    context.go(AppRoutes.playerPage.path);
                  } else {
                    debugPrint('Form is invalid');
                  }
                },
                text: context.l10n.btnLogin,
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
