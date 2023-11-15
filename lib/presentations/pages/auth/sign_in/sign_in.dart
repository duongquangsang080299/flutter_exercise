import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: BlocProvider(
            create: (context) {
              return SignInBloc(
                authRepo: RepositoryProvider.of<AuthRepo>(context),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.getVerticalSize(87)),
                SCText.displaySmall(
                  context,
                  text: context.l10n.signIn,
                  style: context.textTheme.displaySmall?.copyWith(
                    color: AppColor.primary,
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInLoading) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              });
        }
        if (state is SignInSuccess) {
          context.go(AppRoutes.homePage.path);
        }
        if (state is SignInError) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Login failed')));
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
            SizedBox(height: 20),
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
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return SCInput.email(
          labelText: context.l10n.lablelEmail,
          onChanged: (email) {
            context.read<SignInBloc>().add(SignInEmailChanged(email));
            context.read<SignInBloc>().add(ToggleValidatorEvent());
          },
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return SCInput.password(
          fontSize: state.showPassword ? 24 : 12,
          labelText: context.l10n.lablelPassword,
          onChanged: (password) {
            context.read<SignInBloc>().add(SignInPasswordChanged(password));
            context.read<SignInBloc>().add(ToggleValidatorEvent());
          },
          showPassword: state.showPassword,
          obscureText: !state.showPassword,
          onTogglePassword: () =>
              context.read<SignInBloc>().add(const TogglePasswordVisibility()),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return SCButton(
          onPressed: () {
            BlocProvider.of<SignInBloc>(context).add(
                SignInSubmitted(email: state.email, password: state.password));
          },
          isActive: state.isButtonActive,
          text: context.l10n.btnLogin,
          style: context.textTheme.headlineSmall,
          backgroundColor: AppColor.primary,
        );
      },
    );
  }
}
