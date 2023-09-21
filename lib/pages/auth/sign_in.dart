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
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool showPassword = false;
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  bool showUsernameValidation = false;
  bool showPasswordValidation = false;

  @override
  void initState() {
    super.initState();

    _usernameFocusNode.addListener(() {
      setState(() {
        showUsernameValidation = _usernameFocusNode.hasFocus;
      });
    });

    _passwordFocusNode.addListener(() {
      setState(() {
        showPasswordValidation = _passwordFocusNode.hasFocus;
      });
    });
  }

  bool _isButtonActive() {
    return showUsernameValidation &&
        showPasswordValidation &&
        _formKey.currentState?.validate() == true;
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SCScaffold(
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.getVerticalSize(87)),
                // Display Large Text
                SCText.displayLarge(
                  context,
                  text: context.l10n.signIn,
                ),
                const SizedBox(height: 16),
                // Title Text
                SCText.displaySmall(
                  context,
                  text: context.l10n.description,
                ),
                SizedBox(height: getVerticalSize(30)),
                // Text Form Fields for Username
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

                // Sign-In Button
                const Spacer(),
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
                // SCButton(
                //   onPressed: _isButtonActive()
                //       ? () {
                //           debugPrint('Form is valid');
                //           context.go(AppRoutes.playerPage.path);
                //         }
                //       : null,
                //   text: _isButtonActive()
                //       ? context.l10n.btnLogin
                //       : '', // Change text when the button is active
                //   backgroundColor: _isButtonActive()
                //       ? AppColor.primary // Color when the button is active
                //       : AppColor
                //           .whiteFlash, // Color when the button is inactive
                //   height: context.getVerticalSize(60),
                //   borderRadius: 30,
                // ),
                const SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.l10n.forgotPassword,
                        style: context.textTheme.displaySmall?.copyWith(
                          color: AppColor.dimGray,
                        ),
                      ),
                      TextSpan(
                        text: context.l10n.resetHere,
                        style: context.textTheme.displaySmall?.copyWith(
                          fontWeight: AppFontWeight.medium,
                          color: AppColor.primary,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(AppRoutes.forgotPasswordPage.path);
                          },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getVerticalSize(30)),
                Align(
                  child: SCText.displaySmall(
                    context,
                    text: context.l10n.donthaveaccount,
                    style: context.textTheme.displaySmall
                        ?.copyWith(color: AppColor.graysuva),
                  ),
                ),
                const SizedBox(height: 19),
                SCButton(
                  onPressed: () {
                    context.go(AppRoutes.signUp.path);
                  },
                  text: context.l10n.btnAccount,
                  style: context.textTheme.displayMedium?.copyWith(
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  backgroundColor: AppColor.blackJet,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
