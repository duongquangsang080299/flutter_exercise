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
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepo(),
      child: BlocProvider(
        create: (context) => SignUpBloc(
          authRepo: RepositoryProvider.of<AuthRepo>(context),
          initialState: SignUpInitialState(emptySignUpState),
        ),
        child: const SCScaffold(
          body: SignUpBody(),
        ),
      ),
    );
  }
}

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              context.go(AppRoutes.signUp.path);
            },
            icon: SvgPicture.asset(SCIcons.back),
          ),
          SizedBox(height: context.getVerticalSize(44)),
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
            height: context.getVerticalSize(30),
          ),
          const SignUpForm(),
          SizedBox(height: context.getVerticalSize(30)),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: context.l10n.byTappingSignUpYouAcceptOur,
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: AppColor.dimGray),
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
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: AppColor.dimGray),
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
    );
  }
}

void _showTermsAndConditionsDialog(BuildContext context) {
  showDialog<Widget>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: SCText.displayMedium(
          context,
          text: context.l10n.termsandcondition,
          style: context.textTheme.headlineSmall?.copyWith(
            color: AppColor.primary,
          ),
        ),
        content: SingleChildScrollView(
          child: SCText.bodyMedium(
            context,
            text: context.l10n.termandconditionofourapp,
            style: context.textTheme.bodyMedium,
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
              style: context.textTheme.headlineSmall?.copyWith(
                color: AppColor.primary,
              ),
            ),
          ),
        ],
      );
    },
  );
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox20 = SizedBox(height: 20);

    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          context.go(AppRoutes.signUp.path);
        }
        if (state is SignUpErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(context.l10n.signIn)));
        }
      },
      child: Form(
        key: context.read<SignUpBloc>().state.form.formKey,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _UsernameInput(),
            sizedBox20,
            _EmailInput(),
            sizedBox20,
            _PasswordInput(),
            sizedBox20,
            _LoginButton(),
          ],
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => current is SignUpChangedState,
      builder: (context, state) {
        return Column(
          children: [
            SCInput.username(
              labelText: context.l10n.labelUsername,
              // onChanged: (username) {
              //   context.read<SignUpBloc>().add(SignUpUsernameChangedEvent(
              //       form: state.form.copyWith(username: username)));
              // },
              // errorText: state.form.usernameError,
            ),
          ],
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => current is SignUpChangedState,
      builder: (context, state) {
        return SCInput.email(
          labelText: context.l10n.lablelEmail,
          onChanged: (email) {
            context.read<SignUpBloc>().add(SignUpEmailChangedEvent(
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          current is SignUpChangedState || current is SignUpHiddenPasswordState,
      builder: (context, state) {
        return SCInput.password(
          fontSize: state.form.showPassword ? 16 : 12,
          labelText: context.l10n.lablelPassword,
          onChanged: (password) {
            context.read<SignUpBloc>().add(SignUpPasswordChangedEvent(
                  form: state.form.copyWith(password: password),
                ));
          },
          showPassword: state.form.showPassword,
          obscureText: !state.form.showPassword,
          onTogglePassword: () => context.read<SignUpBloc>().add(
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return SCButton(
          onPressed: () {
            if (state.form.formValid ?? false) {
              context.read<SignUpBloc>().add(
                    SignUpSubmittedEvent(
                      form: state.form,
                    ),
                  );
            }
          },
          text: state is SignUpLoadingState
              ? const CircularProgressIndicator()
              : SCText.headlineSmall(context, text: context.l10n.btnLogin),
          style: context.textTheme.headlineSmall,
          backgroundColor: (state.form.formValid ?? false)
              ? AppColor.onTertiary
              : AppColor.whiteFlash,
        );
      },
    );
  }
}
