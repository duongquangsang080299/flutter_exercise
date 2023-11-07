import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/core/routes/routes.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';

/// Define WelcomePage Page
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(
              height: context.getVerticalSize(71),
            ),
            // Displays an image from an asset
            Image.asset(
              SCAssets.clubLogo,
              width: context.getSize(228),
              height: context.getSize(212),
            ),
            SizedBox(height: context.getVerticalSize(71)),
            SCText.displaySmall(
              context,
              textAlign: TextAlign.center,
              text: context.l10n.welcomeToVictoryGreensApp,
            ),
            // A Spacer widget to expand and push content to the bottom
            const Spacer(),
            SCButtonIcon(
              onPressed: () {
                // Navigation action
                context.go(AppRoutes.signIn.path);
              },
              icon: SCIcon.email(color: AppColor.secondary),
              text: context.l10n.btnLoginWithEmail,
            ),
            const SizedBox(
              height: 15,
            ),
            SCButton(
              onPressed: () {
                context.go(AppRoutes.signUp.path);
              },
              text: context.l10n.btnCreateAnAccount,
              style: context.textTheme.headlineSmall,
              backgroundColor: AppColor.onTertiary,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
