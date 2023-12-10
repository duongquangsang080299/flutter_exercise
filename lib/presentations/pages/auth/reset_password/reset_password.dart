import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/auth/reset_password/reset_password_bloc.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/constant/snackbar.dart';
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

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepo(),
      child: BlocProvider<ResetPasswordBloc>(
        create: (context) {
          return ResetPasswordBloc(
            authRepo: RepositoryProvider.of<AuthRepo>(context),
            initialState: ResetPasswordInitialState(emptyResetPasswordState),
          );
        },
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: const SCScaffold(
            body: ResetPasswordBody(),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(28),
        child: Column(children: [
          SizedBox(height: context.getVerticalSize(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  context.go(AppRoutes.signIn.path);
                },
                icon: SvgPicture.asset(SCIcons.back),
              ),
            ],
          ),
          SizedBox(height: context.getVerticalSize(50)),
          SCText.displayLarge(
            context,
            text: context.l10n.forgotPassword,
            style: context.textTheme.displaySmall?.copyWith(
              color: AppColor.primary,
            ),
          ),
          SizedBox(
            height: context.getVerticalSize(30),
          ),
          SCText.bodyMedium(
            context,
            text: context.l10n.enteryouremaihere,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.getVerticalSize(50),
          ),
          const ResetPasswordForm(),
          const SizedBox(
            height: 16,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: context.l10n.rememberyourpassword,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColor.dimGray,
                  ),
                ),
                TextSpan(
                  text: context.l10n.loginhere,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: AppFontWeight.bold,
                    color: AppColor.primary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.go(AppRoutes.signIn.path);
                    },
                ),
              ],
            ),
          ),
        ]));
  }
}

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          context.go(AppRoutes.signIn.path);
        }
        if (state is ResetPasswordErrorState) {
          SnackbarHelper.showSnackBar(context, context.l10n.resetfailed);
        }
      },
      child: Form(
        key: context.read<ResetPasswordBloc>().state.form.formKey,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _EmailInput(),
            SizedBox(height: 20),
            _ResetPasswordButton(),
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
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      buildWhen: (_, current) => current is ResetPasswordChangedState,
      builder: (context, state) {
        return Column(
          children: [
            SCInput.email(
              labelText: context.l10n.lablelEmail,
              onChanged: (email) {
                context.read<ResetPasswordBloc>().add(
                    ResetPasswordEmaildChangedEvent(
                        form: state.form.copyWith(email: email)));
              },
              errorText: state.form.emailError,
            ),
          ],
        );
      },
    );
  }
}

class _ResetPasswordButton extends StatelessWidget {
  const _ResetPasswordButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        bool isFormValid = state.form.emailValid;
        return SCButton(
          onPressed: isFormValid
              ? () {
                  context.read<ResetPasswordBloc>().add(
                        ResetPasswordSubmittedEvent(
                          form: state.form,
                        ),
                      );
                }
              : null,
          text: state is ResetPasswordLoadingState
              ? const CircularProgressIndicator(
                  color: AppColor.secondary,
                )
              : SCText.headlineSmall(
                  context,
                  text: context.l10n.btnResetPassword,
                  style: TextStyle(
                    color: isFormValid ? AppColor.secondary : AppColor.dimGray,
                  ),
                ),
          style: context.textTheme.headlineSmall,
          backgroundColor:
              (state.form.emailValid) ? AppColor.primary : AppColor.whiteFlash,
        );
      },
    );
  }
}
