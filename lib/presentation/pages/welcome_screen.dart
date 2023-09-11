import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.getHorizontalSize(20)),
          child: Column(
            children: [
              SizedBox(
                height: context.getVerticalSize(115),
              ),
              Image.asset(
                'assets/images/clogo.png',
                width: context.getSize(228),
                height: context.getSize(212),
              ),
              SizedBox(height: context.getVerticalSize(71)),
              SCText.displayLarge(
                context,
                style: context.textTheme.displayLarge?.copyWith(
                  color: AppColor.tertiary,
                ),
                textAlign: TextAlign.center,
                text: context.l10n.welcomeToVictoryGreensApp,
              ),
              SizedBox(height: context.getVerticalSize(50)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SCButtonIcon(
                    onPressed: () {
                      context.go(AppRoutes.signIn.path);
                    },
                    icon: SCIcon.email(color: AppColor.secondary),
                    text: context.l10n.btnLoginWithEmail,
                    style: context.textTheme.displayMedium?.copyWith(
                      fontWeight: AppFontWeight.semiBold,
                    ),
                  ),
              SizedBox(height: context.getVerticalSize(30)),
                  SCButton(
                    onPressed: () {
                      context.go(AppRoutes.signUp.path);
                    },
                    text: context.l10n.btnCreateAnAccount,
                    style: context.textTheme.displayMedium?.copyWith(
                      fontWeight: AppFontWeight.semiBold,
                    ),
                    backgroundColor: AppColor.jetBlack,
                  ),
                  SizedBox(height: context.getVerticalSize(30)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
