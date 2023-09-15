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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool showPassword = false;
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
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
                  controller: _usernameController,
                  labelText: context.l10n.labelUsername,
                  validator: (value) => value?.isValidUserName(),
                ),

                const SizedBox(height: 20),

                // Password Text Form Field
                SCInput.password(
                  controller: _passwordController,
                  labelText: context.l10n.lablelPassword,
                  validator: (input) => input?.isValidPassword()?.trimRight(),
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
                SizedBox(height: context.getVerticalSize(40)),

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
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.l10n.forgotPassword,
                        style: context.textTheme.displaySmall?.copyWith(
                          color: AppColor.textDimGray,
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
                            _usernameController.clear();
                            _passwordController.clear();
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
                        ?.copyWith(color: AppColor.suvaGray),
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
                  backgroundColor: AppColor.jetBlack,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
