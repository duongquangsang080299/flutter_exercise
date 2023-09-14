import 'package:flutter/gestures.dart';
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
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? showPassword;
  void _showTermsAndConditionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: SCText.displayMedium(
            context,
            text: context.l10n.termsandcondition,
            style: context.textTheme.displayMedium
                ?.copyWith(color: AppColor.primary),
          ),
          content: SingleChildScrollView(
            child: SCText.bodyMedium(
              context,
              text: context.l10n.termandconditionofourapp,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: SCText.displaySmall(
                context,
                text: context.l10n.close,
                style: context.textTheme.displayMedium
                    ?.copyWith(color: AppColor.primary),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondary,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            context.go(AppRoutes.signIn.path);
          },
          child: SCIcon.back(
            color: AppColor.jetBlack,
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: context.getPadding(all: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.getVerticalSize(44)),
              SCText.displayLarge(
                context,
                text: context.l10n.createanAccount,
              ),
              const SizedBox(height: 16),
              // Title Text
              SCText.displaySmall(
                context,
                style: context.textTheme.displaySmall
                    ?.copyWith(fontWeight: AppFontWeight.regular),
                text: context.l10n.description,
              ),
              SizedBox(
                height: getVerticalSize(
                  30,
                ),
              ), // Text Form Fields for Username and Password
              Column(
                children: [
                  SCInput.username(
                    labelText: context.l10n.labelUsername,
                    validator: (value) => value?.isValidUserName(),
                  ),

                  const SizedBox(height: 20),
                  SCInput.email(
                    labelText: context.l10n.lablelEmail,
                    validator: (value) => value?.isValidEmail(),
                  ),
                  const SizedBox(height: 20),
                  // Password Text Form Field
                  SCInput.password(
                    labelText: context.l10n.lablelPassword,
                    validator: (input) => input?.isValidPassword(),
                    suffixIcon: IconButton(
                      icon: SCIcon.hidden(),
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
                  SCButton(
                    onPressed: () {
                      context.go(AppRoutes.signIn.path);
                      final form = _formKey.currentState ?? FormState();
                      if (form.validate()) {
                        debugPrint('Form is valid');
                        context.go(AppRoutes.signIn.path);
                      } else {
                        debugPrint('Form is invalid');
                      }
                    },
                    text: context.l10n.btnSignUp,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontWeight: AppFontWeight.semiBold,
                        ),
                    backgroundColor: AppColor.jetBlack,
                    borderRadius: 30,
                  ),
                ],
              ),
              SizedBox(height: context.getVerticalSize(30)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.byTappingSignUpYouAcceptOur,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: AppFontWeight.regular,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: context.l10n.terms,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.primary,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: context.l10n.and,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: AppFontWeight.regular,
                            color: AppColor.textDimGray,
                          ),
                    ),
                    TextSpan(
                      text: context.l10n.condition,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.primary,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _showTermsAndConditionsDialog(context);
                        },
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
