import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/data/models/password_model.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/core/routes/routes.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
        body: Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: BlocProvider(
          create: (context) {
            return SignInBloc(
              authRepo: RepositoryProvider.of<AuthRepo>(context),
            );
          },
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: context.getVerticalSize(87)),
            SCText.displaySmall(
              context,
              text: context.l10n.signIn,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: AppColor.primary),
            ),
            SizedBox(height: getVerticalSize(16)),
            SCText.bodyLarge(
              context,
              text: context.l10n.description,
            ),
            SizedBox(height: getVerticalSize(30)),
            const LoginForm(),
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
          ]),
        ),
      ),
    ));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
                const SnackBar(content: Text('Authentication Failure')));
        }
      },
      child: const Align(
        alignment: Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _EmailInput(),
            SizedBox(height: 20),
            _PasswordInput(),
            SizedBox(height: 30),
            _LoginButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return SCInput.email(
        onChanged: (email) =>
            context.read<SignInBloc>().add(SignInEmailChanged(email)),
        // decoration: InputDecoration(
        //   labelText: 'email',
        //   errorText:
        //       state.email.displayError != null ? 'invalid username' : null,
        // ),
      );
    });
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return SCInput.password(
        onChanged: (password) =>
            context.read<SignInBloc>().add(SignInPasswordChanged(password)),
      );
    });
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : SCButton(
                text: context.l10n.btnLogin,
                style: context.textTheme.headlineSmall,
                backgroundColor: AppColor.primary,
              );
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> with InputValidationMixin {
//   /// Create a GlobalKey for the form to access its state
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   /// Create controllers for the username and password text fields
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   /// Create FocusNodes for the username and password fields
//   final _emailFocusNode = FocusNode();
//   final _passwordFocusNode = FocusNode();

//   /// Booleans to track when to show validation hints
//   bool showEmailValidation = false;
//   bool showPasswordValidation = false;

//   /// Boolean to track if the password field is filled
//   bool isPasswordFilled = false;

//   /// Boolean to track the overall button activation state
//   bool _isButtonActive = false;

//   /// Boolean to control password visibility
//   bool showPassword = false;

//   @override
//   void initState() {
//     super.initState();

//     /// Add listeners to username and password FocusNodes to show/hide validation hints
//     _emailFocusNode.addListener(() {
//       setState(() {
//         showEmailValidation = _emailFocusNode.hasFocus;
//       });
//     });

//     _passwordFocusNode.addListener(() {
//       setState(() {
//         showPasswordValidation = _passwordFocusNode.hasFocus;
//       });
//     });

//     /// Add listener to the password controller to track if the field is filled
//     _passwordController.addListener(() {
//       setState(() {
//         isPasswordFilled = _passwordController.text.isNotEmpty;
//         // Call a function to update the button activation state
//         _updateButtonState();
//       });
//     });

//     /// Add listener username controller to update the button activation state
//     _emailController.addListener(() {
//       setState(_updateButtonState);
//     });
//   }

//   /// Function to update the button activation state based on conditions
//   void _updateButtonState() {
//     setState(() {
//       _isButtonActive = isPasswordFilled &&
//           _emailController.text.isNotEmpty &&
//           (_formKey.currentState?.validate() ?? false);
//     });
//   }

//   @override
//   void dispose() {
//     // Dispose of the FocusNodes and controllers to prevent memory leaks
//     _emailFocusNode.dispose();
//     _passwordFocusNode.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const sizedBox16 = SizedBox(height: 16);
//     return GestureDetector(
//       onTap: () {
//         // Unfocus the keyboard when tapped outside of the input fields
//         FocusManager.instance.primaryFocus?.unfocus();
//       },
//       child: SCScaffold(
//         body: Form(
//           // Associate the form with a GlobalKey
//           key: _formKey,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           child: Padding(
//             padding: const EdgeInsets.all(28),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: context.getVerticalSize(87)),
//                 SCText.displaySmall(
//                   context,
//                   text: context.l10n.signIn,
//                   style: context.textTheme.displaySmall
//                       ?.copyWith(color: AppColor.primary),
//                 ),
//                 sizedBox16,
//                 SCText.bodyLarge(
//                   context,
//                   text: context.l10n.description,
//                 ),
//                 SizedBox(height: getVerticalSize(30)),
//                 // Username input field
//                 SCInput.email(
//                   focusNode: _emailFocusNode,
//                   controller: _emailController,
//                 ),
//                 const SizedBox(height: 20),
//                 SCInput.password(
//                   focusNode: _passwordFocusNode,
//                   fontSize: showPassword ? 16 : 12,
//                   validator: (input) {
//                     // Validate password input if focus is on the field
//                     if (showPasswordValidation) {
//                       return isPasswordValid(input ?? '')?.trimRight();
//                     }
//                     return null;
//                   },
//                   controller: _passwordController,
//                   suffixIcon: IconButton(
//                     icon: showPassword
//                         ? SCIcon.hidden(
//                             color: AppColor.primary,
//                           )
//                         : SCIcon.suffix(),
//                     onPressed: () {
//                       setState(() {
//                         // Toggle password visibility
//                         showPassword = !showPassword;
//                       });
//                     },
//                   ),
//                   // Hide password character
//                   obscureText: !showPassword,
//                 ),
//                 const Spacer(),
//                 BlocListener<SignInBloc, SignInState>(
//                   listener: (context, state) {
//                     if (state is SignInLoading) {
//                       showDialog(
//                           context: context,
//                           barrierDismissible: false,
//                           builder: (context) {
//                             return const Center(
//                               child: CircularProgressIndicator(),
//                             );
//                           });
//                     }
//                     if (state is SignInSuccess) {
//                       context.go(AppRoutes.homePage.path);
//                     }
//                     if (state is SignInError) {
//                       Navigator.of(context).pop();
//                       ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(content: Text('Login failed')));
//                     }
//                   },
//                   child: SCButton(
//                     onPressed: _isButtonActive
//                         ? () {
//                             BlocProvider.of<SignInBloc>(context).add(
//                                 AuthSignInEvent(
//                                     email: _emailController.text,
//                                     password: _passwordController.text));
//                             // if (_formKey.currentState?.validate() ?? false) {
//                             //   debugPrint('Form is valid');
//                             //   // Navigate to the player page if the form is valid
//                             //   context.go(AppRoutes.playerPage.path);
//                             // } else {
//                             //   debugPrint('Form is invalid');
//                             // }
//                           }
//                         : null,
//                     text: context.l10n.btnLogin,
//                     style: context.textTheme.headlineSmall,
//                     backgroundColor: _isButtonActive
//                         ? AppColor.primary
//                         : AppColor.whiteFlash,
//                   ),
//                 ),
//                 sizedBox16,
//                 Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                         text: context.l10n.forgotPassword,
//                         style: context.textTheme.bodyLarge?.copyWith(
//                           color: AppColor.dimGray,
//                         ),
//                       ),
//                       TextSpan(
//                         text: context.l10n.resetHere,
//                         style: context.textTheme.bodyLarge?.copyWith(
//                           fontWeight: AppFontWeight.bold,
//                           color: AppColor.primary,
//                         ),
//                         recognizer: TapGestureRecognizer()
//                           ..onTap = () {
//                             context.go(AppRoutes.forgotPasswordPage.path);
//                           },
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: getVerticalSize(30)),
//                 Align(
//                   child: SCText.bodyLarge(
//                     context,
//                     text: context.l10n.donthaveaccount,
//                     style: context.textTheme.bodyLarge
//                         ?.copyWith(color: AppColor.graysuva),
//                   ),
//                 ),
//                 const SizedBox(height: 19),
//                 SCButton(
//                   onPressed: () {
//                     context.go(
//                       AppRoutes.signUp.path,
//                     );
//                   },
//                   text: context.l10n.btnAccount,
//                   style: context.textTheme.headlineSmall,
//                   backgroundColor: AppColor.onTertiary,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
