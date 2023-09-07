import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
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
            const SizedBox(
              height: 115,
            ),
            Image.asset(
              'assets/images/clogo.png',
              width: 228,
              height: 212,
            ),

            const SizedBox(height: 71),

            // Large Text
            SCText.displayLarge(
              context,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: AppColor.tertiary,
                  fontWeight: AppFontWeight.semiBold,),
              textAlign: TextAlign.center,
              text: 'Welcome to \n Victory Greens App',
            ),

            const SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCButtonIcon(
                  onPressed: () {
                    GoRouter.of(context).go('/signIn');
                  },
                  text: 'Login with email',
                  icon: SCIcon.email(color:AppColor.secondaryColor),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.secondaryColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  width: 318,
                  height: 60,
                ),
                const SizedBox(height: 30), 

                //Button Create Account
                SCButton(
                  onPressed: () {
                    GoRouter.of(context).go('/signUp');
                  },
                  text: 'Create An Account',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.secondaryColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  width: 319,
                  height: 60,
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
