import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go('/signIn');
              },
              child: SCIcon.back(color: Colors.black, size: 24),
            ),
            const SizedBox(height: 44),
            SCText.displayLarge(
              context,
              text: 'Who is your favourite Victory players? ',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: AppFontWeight.semiBold,
                  ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 41),

            // Title Text
            SCText.bodySmall(
              context,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColor.tertiary,
                    fontWeight: AppFontWeight.regular,
                  ),
              text: 'Amet minim mollit non deserunt ullamcoei italiqua dolor'
                  ' do amet sintelit officia.',
            ),

            const SizedBox(height: 29),

            SCCard.avatar(
              child: const SizedBox(
                height: 152,
                width: 142,
                child: Card(
                  elevation: 0,
                  // shape: RoundedRectangleBorder(
                   
                  // ),
                  color: AppColor.jetBlackColor,
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}
