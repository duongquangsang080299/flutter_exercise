import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
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
        child: Column(
          children: [
            SizedBox(
              height: context.getVerticalSize(115),
            ),
            Image.asset(
              'assets/images/clogo.png',
              width: context.getHorizontalSize(228),
              height: context.getVerticalSize(212),
            ),
            SizedBox(height: context.getVerticalSize(71)),
            SCText.displayLarge(
              context,
              style: context.textTheme.displayLarge?.copyWith(
                color: AppColor.tertiary,
              ),
              textAlign: TextAlign.center,
              text: context.l10n.textWelcomeScreen,
            ),
            SizedBox(height: context.getVerticalSize(50)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCButtonIcon(
                  onPressed: () {
                    context.go('/signIn');
                  },
                  text: context.l10n.loginWithEmailButton,
                  icon: SCIcon.email(color: AppColor.secondaryColor),
                  style: context.textTheme.displayMedium?.copyWith(
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  width: context.getHorizontalSize(318),
                  height: context.getVerticalSize(60),
                ),
                SizedBox(height: context.getVerticalSize(30)),
                SCButton(
                  onPressed: () {
                    context.go('/signUp');
                  },
                  text: context.l10n.createAccountButton,
                  style: context.textTheme.displayMedium?.copyWith(
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  width: context.getHorizontalSize(319),
                  height: context.getVerticalSize(60),
                  backgroundColor: AppColor.jetBlackColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
