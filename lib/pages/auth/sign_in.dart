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
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  bool showUsernameValidation = false;
  bool showPasswordValidation = false;
  bool isPasswordFilled = false;
  bool _isButtonActive = false;

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

    _passwordController.addListener(() {
      setState(() {
        isPasswordFilled = _passwordController.text.isNotEmpty;
        _updateButtonState();
      });
    });
    _usernameController.addListener(() {
      setState(_updateButtonState);
    });
  }

  void _updateButtonState() {
    setState(() {
      _isButtonActive = isPasswordFilled &&
          _usernameController.text.isNotEmpty &&
          _formKey.currentState?.validate() == true;
    });
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
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
                SCText.displayLarge(
                  context,
                  text: context.l10n.signIn,
                ),
                const SizedBox(height: 16),
                SCText.displaySmall(
                  context,
                  text: context.l10n.description,
                ),
                SizedBox(height: getVerticalSize(30)),
                SCInput.username(
                  focusNode: _usernameFocusNode,
                  labelText: context.l10n.labelUsername,
                  validator: (value) {
                    if (showUsernameValidation) {
                      return value?.isValidUserName();
                    }
                    return null;
                  },
                  controller: _usernameController,
                ),
                const SizedBox(height: 20),
                SCInput.password(
                  focusNode: _passwordFocusNode,
                  labelText: context.l10n.lablelPassword,
                  validator: (input) {
                    if (showPasswordValidation) {
                      return input?.isValidPassword()?.trimRight();
                    }
                    return null;
                  },
                  controller: _passwordController,
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
                SCButton(
                  onPressed: _isButtonActive
                      ? () {
                          if (_formKey.currentState?.validate() ?? false) {
                            debugPrint('Form is valid');
                            context.go(AppRoutes.playerPage.path);
                          } else {
                            debugPrint('Form is invalid');
                          }
                        }
                      : null,
                  text: context.l10n.btnSignUp,
                  backgroundColor:
                      _isButtonActive ? AppColor.primary : AppColor.whiteFlash,
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
                    context.go(
                        AppRoutes.signUp.path); // Navigate to the desired page
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
