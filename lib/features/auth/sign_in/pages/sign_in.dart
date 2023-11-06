import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/features/auth/sign_in/blocs/sign_in_bloc.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/layout/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with InputValidationMixin {
  /// Create a GlobalKey for the form to access its state
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  /// Create controllers for the email and password text fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  /// Create FocusNodes for the email and password fields
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  /// Booleans to track when to show validation hints
  bool showemailValidation = false;
  bool showEmailValidation = false;

  bool showPasswordValidation = false;

  /// Boolean to track if the password field is filled
  bool isPasswordFilled = false;

  /// Boolean to track the overall button activation state
  bool _isButtonActive = false;

  /// Boolean to control password visibility
  bool showPassword = false;

  @override
  void initState() {
    super.initState();

    /// Add listeners to email and password FocusNodes to show/hide validation hints
    _emailFocusNode.addListener(() {
      setState(() {
        showemailValidation = _emailFocusNode.hasFocus;
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

    /// Add listener email controller to update the button activation state
    _emailController.addListener(() {
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
          _emailController.text.isNotEmpty &&
          (_formKey.currentState?.validate() ?? false);
    });
  }

  @override
  void dispose() {
    // Dispose of the FocusNodes and controllers to prevent memory leaks
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const sizedBox16 = SizedBox(height: 16);
    return GestureDetector(
      onTap: () {
        // Unfocus the keyboard when tapped outside of the input fields
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SCScaffold(
        body: Form(
          // Associate the form with a GlobalKey
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.getVerticalSize(87)),
                SCText.displaySmall(
                  context,
                  text: context.l10n.signIn,
                  style: context.textTheme.displaySmall
                      ?.copyWith(color: AppColor.primary),
                ),
                sizedBox16,
                SCText.bodyLarge(
                  context,
                  text: context.l10n.description,
                ),
                SizedBox(height: getVerticalSize(30)),
                // email input field
                SCInput.email(
                  focusNode: _emailFocusNode,
                  controller: _emailController,
                ),
                const SizedBox(height: 20),
                SCInput.password(
                  focusNode: _passwordFocusNode,
                  fontSize: showPassword ? 16 : 12,
                  validator: (input) {
                    // Validate password input if focus is on the field
                    if (showPasswordValidation) {
                      return isPasswordValid(input ?? '')?.trimRight();
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
                        // Toggle password visibility
                        showPassword = !showPassword;
                      });
                    },
                  ),
                  // Hide password character
                  obscureText: !showPassword,
                ),
                const Spacer(),
                BlocListener<AuthSignInBloc, AuthSignInState>(
                  listener: (context, state) {
                    if (state is AuthSignInLoading) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          });
                    }
                    if (state is AuthSignInSucces) {
                      context.go(AppRoutes.playerPage.path);
                    }
                    if (state is AuthSignInError) {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Login failed')));
                    }
                  },
                  child: SCButton(
                    onPressed: _isButtonActive
                        ? () {
                            BlocProvider.of<AuthSignInBloc>(context).add(
                                EnterSignInEvent(
                                    email: _emailController.text,
                                    password: _passwordController.text));
                            // if (_formKey.currentState?.validate() ?? false) {
                            //   debugPrint('Form is valid');
                            //   // Navigate to the player page if the form is valid
                            //   context.go(AppRoutes.playerPage.path);
                            // } else {
                            //   debugPrint('Form is invalid');
                            // }
                          }
                        : null,
                    text: context.l10n.btnLogin,
                    style: context.textTheme.headlineSmall,
                    backgroundColor: _isButtonActive
                        ? AppColor.primary
                        : AppColor.whiteFlash,
                  ),
                ),
                sizedBox16,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.l10n.forgotPassword,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: AppColor.dimGray,
                        ),
                      ),
                      TextSpan(
                        text: context.l10n.resetHere,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: AppFontWeight.bold,
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
                  child: SCText.bodyLarge(
                    context,
                    text: context.l10n.donthaveaccount,
                    style: context.textTheme.bodyLarge
                        ?.copyWith(color: AppColor.graysuva),
                  ),
                ),
                const SizedBox(height: 19),
                SCButton(
                  onPressed: () {
                    context.go(
                      AppRoutes.signUp.path,
                    );
                  },
                  text: context.l10n.btnAccount,
                  style: context.textTheme.headlineSmall,
                  backgroundColor: AppColor.onTertiary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
