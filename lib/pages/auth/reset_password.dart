import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
import 'package:soccer_club_app/widgets/input.dart';
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
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
              SCInput.email(
                labelText: context.l10n.lablelEmail,
                validator: (value) => value?.isValidEmail(),
              ),
              const Spacer(),
              SCButton(
                onPressed: () {
                  final form = _formKey.currentState ?? FormState();
                  if (form.validate()) {
                    debugPrint('Form is valid');
                    context.go(AppRoutes.signIn.path);
                  } else {
                    debugPrint('Form is invalid');
                  }
                },
                text: context.l10n.btnResetPassword,
                backgroundColor: AppColor.primary,
                height: context.getVerticalSize(60),
                borderRadius: 30,
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.rememberyourpassword,
                      style: context.textTheme.displaySmall?.copyWith(
                        color: AppColor.dimGray,
                      ),
                    ),
                    TextSpan(
                      text: context.l10n.loginhere,
                      style: context.textTheme.displaySmall?.copyWith(
                        fontWeight: AppFontWeight.medium,
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
            ],
          ),
        ),
      ),
    );
  }
}
