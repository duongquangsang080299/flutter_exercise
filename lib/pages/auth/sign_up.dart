import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  bool showUsernameValidation = false;
  bool showPasswordValidation = false;
  bool showEmailValidation = false;

  @override
  void initState() {
    super.initState();

    _usernameFocusNode.addListener(() {
      setState(() {
        showUsernameValidation = _usernameFocusNode.hasFocus;
      });
    });

    _emailFocusNode.addListener(() {
      setState(() {
        showEmailValidation = _emailFocusNode.hasFocus;
      });
    });

    _passwordFocusNode.addListener(() {
      setState(() {
        showPasswordValidation = _passwordFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  void _showTermsAndConditionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: SCText.displayMedium(
            context,
            text: context.l10n.termsandcondition,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColor.primary,
                ), // Define the appropriate text style
          ),
          content: SingleChildScrollView(
            child: SCText.bodyMedium(
              context,
              text: context.l10n.termandconditionofourapp,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  // Define the appropriate text style
                  ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: SCText.displaySmall(
                context,
                text: context.l10n.close,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColor.primary,
                    ), // Define the appropriate text style
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  context.go(AppRoutes.notificationsPage.path);
                },
                icon: SvgPicture.asset(SCIcons.back),
              ),
              // SCIcon.back(
              //   width: 24,
              //   height: 14,
              //   color: AppColor.tertiary,
              //   onPressed: () {
              //     context.go(AppRoutes.signIn.path);
              //   },
              // ),
              SizedBox(height: context.getVerticalSize(50)),
              SCText.displayLarge(
                context,
                text: context.l10n.createanAccount,
              ),
              const SizedBox(height: 16),
              // Title Text
              SCText.displaySmall(
                context,
                text: context.l10n.description,
              ),
              SizedBox(
                height: getVerticalSize(
                  30,
                ),
              ),

              /// Text Form Fields for Username, Email, and Password
              SCInput.username(
                focusNode: _usernameFocusNode,
                labelText: context.l10n.labelUsername,
                validator: (value) {
                  if (showUsernameValidation) {
                    return value?.isValidUserName();
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Email Text Form Field
              SCInput.email(
                focusNode: _emailFocusNode,
                labelText: context.l10n.lablelEmail,
                validator: (value) {
                  if (showEmailValidation) {
                    return value?.isValidEmail();
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Password Text Form Field
              SCInput.password(
                focusNode: _passwordFocusNode,
                labelText: context.l10n.lablelPassword,
                validator: (input) {
                  if (showPasswordValidation) {
                    return input?.isValidPassword()?.trimRight();
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  icon: showPassword
                      ? SCIcon.hidden(
                          color: AppColor.primary,
                        )
                      : SCIcon.suffix(),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                obscureText: !showPassword,
              ),
              const Spacer(),
              // Sign-Up Button
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                    context.go(AppRoutes.signIn.path);
                  } else {
                    debugPrint('Form is invalid');
                  }
                },
                text: context.l10n.btnSignUp,
                backgroundColor: AppColor.blackJet,
                height: context.getVerticalSize(60),
                borderRadius: 30,
              ),
              SizedBox(height: context.getVerticalSize(30)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.byTappingSignUpYouAcceptOur,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColor.dimGray,
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
                            color: AppColor.dimGray,
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
