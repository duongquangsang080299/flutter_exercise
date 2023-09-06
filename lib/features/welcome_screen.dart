import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            SizedBox(
              width: 228,
              height: 212,
              child: Image.asset('assets/images/clogo.png'),
            ),

            const SizedBox(height: 20),

            // Large Text
            SCText.displayLarge(
              context,
              style: Theme.of(context).textTheme.displayLarge,
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
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.whiteSmokeColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  
                  width: 318,
                  height: 60,
                 
                ),
                const SizedBox(height: 30), // Add spacing between buttons

                // ElevatedButton (Sign Up)
                SCButton(
                  onPressed: () {
                    GoRouter.of(context).go('/signUp');
                  },
                  text: 'CREATE AN ACCOUNT',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.whiteSmokeColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  
                  width: 319,
                  height: 60,
                 
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
