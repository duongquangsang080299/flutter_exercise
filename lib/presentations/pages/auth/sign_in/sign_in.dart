import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/snackbar.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
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
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepo(),
      child: BlocProvider<SignInBloc>(
        create: (context) {
          return SignInBloc(
            authRepo: RepositoryProvider.of<AuthRepo>(context),
            initialState: SignInInitialState(emptySignInState),
          );
        },
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: const SCScaffold(
            body: SignInBody(),
          ),
        ),
      ),
    );
  }
}

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox16 = SizedBox(height: 16);
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.getVerticalSize(87)),
          SCText.displaySmall(context,
              text: context.l10n.signIn, style: context.textTheme.displaySmall),
          sizedBox16,
          SCText.bodyLarge(
            context,
            text: context.l10n.description,
          ),
          SizedBox(height: getVerticalSize(30)),
          const LoginForm(),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _LoginButton(),
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
                        fontWeight: FontWeight.bold,
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
              const SizedBox(
                height: 19,
              ),
              SCButton(
                text: SCText.headlineSmall(context,
                    text: context.l10n.btnCreateAnAccount),
                style: context.textTheme.headlineSmall,
                backgroundColor: AppColor.onTertiary,
                onPressed: () {
                  context.go(AppRoutes.signUp.path);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _context = context;
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          _context.go(AppRoutes.homePage.path);
        }
        if (state is SignInErrorState) {
          SnackbarHelper.showSnackBar(context, context.l10n.loginfailed);
        }
      },
      child: Form(
        key: _context.read<SignInBloc>().state.form.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _EmailInput(),
            const SizedBox(height: 20),
            const _PasswordInput(),
            SizedBox(height: getVerticalSize(30)),
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
    final _context = context;
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (_, current) => current is SignInChangedState,
      builder: (context, state) {
        return SCInput.email(
          labelText: _context.l10n.lablelEmail,
          onChanged: (email) {
            _context.read<SignInBloc>().add(SignInEmailChangedEvent(
                form: state.form.copyWith(email: email)));
          },
          errorText: state.form.emailError,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    final _context = context;
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (_, current) =>
          current is SignInChangedState || current is SignInHiddenPasswordState,
      builder: (context, state) {
        return SCInput.password(
          fontSize: state.form.showPassword ? 16 : 12,
          labelText: _context.l10n.lablelPassword,
          onChanged: (password) {
            _context.read<SignInBloc>().add(SignInPasswordChangedEvent(
                  form: state.form.copyWith(password: password),
                ));
          },
          showPassword: state.form.showPassword,
          obscureText: !state.form.showPassword,
          onTogglePassword: () => _context.read<SignInBloc>().add(
              TogglePasswordVisibility(showPassword: state.form.showPassword)),
          errorText: state.form.passwordError,
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
        bool isFormValid = state.form.formValid ?? false;

        return SCButton(
          onPressed: isFormValid
              ? () {
                  context.read<SignInBloc>().add(
                        SignInSubmittedEvent(
                          form: state.form,
                        ),
                      );
                }
              : null,
          text: state is SignInLoadingState
              ? const CircularProgressIndicator(
                  color: AppColor.secondary,
                )
              : SCText.headlineSmall(
                  context,
                  text: context.l10n.btnLogin,
                  style: TextStyle(
                    color: isFormValid ? AppColor.secondary : AppColor.dimGray,
                  ),
                ),
          style: context.textTheme.headlineSmall,
          backgroundColor: isFormValid ? AppColor.primary : AppColor.whiteFlash,
        );
      },
    );
  }
}
