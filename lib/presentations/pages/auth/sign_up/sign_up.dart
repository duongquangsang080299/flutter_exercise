import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/auth/sign_up/sign_up_bloc.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with InputValidationMixin {
  /// Create a GlobalKey for the form to access its state
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  /// Create controllers for the username,email and password text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  /// Create FocusNodes for the username,email and password fields
  final _usernameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  /// Booleans to track when to show validation hints
  bool showUsernameValidation = false;
  bool showPasswordValidation = false;
  bool showEmailValidation = false;

  /// Boolean to track if the password field is filled
  bool isPasswordFilled = false;

  /// Boolean to track the overall button activation state
  bool _isButtonActive = false;

  /// Boolean to control password visibility
  bool showPassword = false;

  @override
  void initState() {
    super.initState();

    /// Add listeners username, email and password FocusNodes show/hide validation hint
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

    /// Add listener to the password controller to track if the field is filled
    _passwordController.addListener(() {
      setState(() {
        isPasswordFilled = _passwordController.text.isNotEmpty;
        // Call a function to update the button activation state
        _updateButtonState();
      });
    });

    /// Add listener username,email controller to update button activation state
    _usernameController.addListener(() {
      setState(_updateButtonState);
    });

    _emailController.addListener(() {
      setState(_updateButtonState);
    });
  }

  /// Function to update the button activation state based on conditions
  void _updateButtonState() {
    setState(() {
      _isButtonActive = isPasswordFilled &&
          _usernameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          (_formKey.currentState?.validate() ?? false);
    });
  }

  @override
  void dispose() {
    // Dispose of the FocusNodes and controllers to prevent memory leaks
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailFocusNode.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showTermsAndConditionsDialog(BuildContext context) {
    // Show a dialog box with terms and conditions
    showDialog<Widget>(
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
            // Add a close button to dismiss the dialog
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
    const sizedBox20 = SizedBox(height: 20);

    return GestureDetector(
      onTap: () {
        // Unfocus the keyboard when tapped outside of the input fields
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SCScaffold(
        body: Form(
          key: _formKey,
          // Associate the form with a GlobalKey
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
                SCText.displaySmall(
                  context,
                  text: context.l10n.createanAccount,
                  style: context.textTheme.displaySmall
                      ?.copyWith(color: AppColor.primary),
                ),
                const SizedBox(height: 16),
                SCText.bodyLarge(
                  context,
                  text: context.l10n.description,
                ),
                SizedBox(
                  height: getVerticalSize(30),
                ),
                SCInput.username(
                  focusNode: _usernameFocusNode,
                  controller: _usernameController,
                ),
                sizedBox20,
                SCInput.email(
                  focusNode: _emailFocusNode,
                  validator: (email) {
                    // Validate email input if focus is on the field
                    if (showEmailValidation) {
                      return isValidUserName(email ?? '');
                    }
                    return null;
                  },
                  controller: _emailController,
                ),
                sizedBox20,
                SCInput.password(
                  focusNode: _passwordFocusNode,
                  fontSize: showPassword ? 16 : 12,

                  controller: _passwordController,
                  suffixIcon: IconButton(
                    icon: showPassword
                        ? SCIcon.hidden(
                            color: AppColor.primary,
                          )
                        : SCIcon.suffix(),
                    onPressed: () {
                      setState(() {
                        // Toggle password visibility
                        showPassword = !showPassword;
                      });
                    },
                  ),
                  // Hide password character
                  obscureText: !showPassword,
                ),
                const Spacer(),
                BlocListener<SignUpBloc, SignUpState>(
                  listener: (context, state) {
                    if (state is SignUpSucces) {
                      context.go(AppRoutes.signIn.path);
                    }
                  },
                  child: SCButton(
                    onPressed: _isButtonActive
                        ? () {
                            BlocProvider.of<SignUpBloc>(context).add(
                                AuthSignUpEvent(
                                    email: _emailController.text,
                                    password: _passwordController.text));

                            if (_formKey.currentState?.validate() ?? false) {
                              debugPrint('Form is valid');
                              // Navigate to the player page if the form is valid
                            } else {
                              debugPrint('Form is invalid');
                            }
                          }
                        : null,
                    text: context.l10n.btnSignUp,
                    style: context.textTheme.headlineSmall,
                    backgroundColor: _isButtonActive
                        ? AppColor.onTertiary
                        : AppColor.whiteFlash,
                    height: context.getVerticalSize(60),
                  ),
                ),
                SizedBox(height: context.getVerticalSize(30)),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.l10n.byTappingSignUpYouAcceptOur,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: AppColor.dimGray,
                        ),
                      ),
                      TextSpan(
                        text: context.l10n.terms,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: AppFontWeight.bold,
                          color: AppColor.primary,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: context.l10n.and,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: AppColor.dimGray,
                        ),
                      ),
                      TextSpan(
                        text: context.l10n.condition,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: AppFontWeight.bold,
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
