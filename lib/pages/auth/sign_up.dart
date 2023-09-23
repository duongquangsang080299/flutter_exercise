import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
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

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  bool showPassword = false;
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  bool showUsernameValidation = false;
  bool showPasswordValidation = false;
  bool showEmailValidation = false;
  Color _buttonColor = AppColor.blackJet;

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

    _passwordController.addListener(() {
      setState(() {
        _buttonColor = _passwordController.text.isNotEmpty
            ? AppColor.blackJet
            : AppColor.whiteFlash;
      });
    });
  }

  bool _isButtonActive() {
    return _usernameFocusNode.hasFocus &&
        _emailFocusNode.hasFocus &&
        _passwordFocusNode.hasFocus &&
        _formKey.currentState?.validate() == true;
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordController.dispose();
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
            style: context.textTheme.displayMedium?.copyWith(
              color: AppColor.primary,
            ),
          ),
          content: SingleChildScrollView(
            child: SCText.bodyMedium(
              context,
              text: context.l10n.termandconditionofourapp,
              style: context.textTheme.bodyMedium?.copyWith(),
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
                style: context.textTheme.displayMedium?.copyWith(
                  color: AppColor.primary,
                ),
              ),
            ),
          ],
        );
      },
    );
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
                IconButton(
                  onPressed: () {
                    context.go(AppRoutes.signIn.path);
                  },
                  icon: SvgPicture.asset(SCIcons.back),
                ),
                SizedBox(height: context.getVerticalSize(50)),
                SCText.displayLarge(
                  context,
                  text: context.l10n.createanAccount,
                ),
                const SizedBox(height: 16),
                SCText.displaySmall(
                  context,
                  text: context.l10n.description,
                ),
                SizedBox(
                  height: getVerticalSize(
                    30,
                  ),
                ),
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
                  onPressed: _isButtonActive()
                      ? () {
                          if (_formKey.currentState?.validate() ?? false) {
                            debugPrint('Form is valid');
                            context.go(AppRoutes.signIn.path);
                          } else {
                            debugPrint('Form is invalid');
                          }
                        }
                      : null,
                  text: context.l10n.btnSignUp,
                  backgroundColor: _buttonColor,
                  height: context.getVerticalSize(60),
                  borderRadius: 30,
                ),
                SizedBox(height: context.getVerticalSize(30)),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.l10n.byTappingSignUpYouAcceptOur,
                        style: context.textTheme.displaySmall?.copyWith(
                          color: AppColor.dimGray,
                        ),
                      ),
                      TextSpan(
                        text: context.l10n.terms,
                        style: context.textTheme.displaySmall?.copyWith(
                          fontWeight: AppFontWeight.medium,
                          color: AppColor.primary,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: context.l10n.and,
                        style: context.textTheme.displaySmall?.copyWith(
                          color: AppColor.dimGray,
                        ),
                      ),
                      TextSpan(
                        text: context.l10n.condition,
                        style: context.textTheme.displaySmall?.copyWith(
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
      ),
    );
  }
}
