// import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/theme/app_theme.dart';
// import 'package:soccer_club_app/page/page1.dart';
// import 'package:soccer_club_app/page/page2.dart';
// import 'package:soccer_club_app/page/page3.dart';
// import 'package:soccer_club_app/page/page4.dart';
import 'package:soccer_club_app/widgets/button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme(); // Instantiate your theme

    return Scaffold(
      backgroundColor: Colors.white, // Set background color here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 243,
              height: 309,
              child: Image.asset('assets/images/clogo.png'),
            ),

            const SizedBox(height: 20),

            // Display Large Text
            Text(
              'Good Afternoon',
              style: Theme.of(context).textTheme.displayLarge,
            ),

            const SizedBox(height: 10),

            // Display Medium Text
            Text('Welcome Back',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: AppColor.jetBlackColor)),

            const SizedBox(height: 20),

            // Title Description Text
            Text(
              'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor \n incididunt ut labore et dolore magna aliqua',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    letterSpacing: 0.5,
                  ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // SizedBox(
            //     height: 500,
            //     child: PageView(
            //       controller: _controller,
            //       onPageChanged: (index) {
            //         _currentIndex = index;
            //       },
            //       children: const [
            //         Page1(),
            //         Page2(),
            //         Page3(),
            //         Page4(),
            //       ],
            //     ),
            //   ),

            //   // Dots Indicator
            //   DotsIndicator(
            //     dotsCount: 4, // Number of dots (pages)
            //     // position: _currentIndex.toDouble(),
            //     decorator: const DotsDecorator(
            //       activeColor: AppColor.primaryColor, // Active dot color
            //       size:  Size.square(10), // Size of the dots
            //       activeSize:  Size.square(10), // Size of the active dot
            //     ),
            //   ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SCOutlinedButton
                SCOutlineButton(
                  onPressed: () {},
                  text: 'SKIP',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColor.textPrimary,
                      ),
                  width: 154,
                  height: 60,
                  borderRadius: 30,
                ),
                const SizedBox(width: 20),
                // SCButton (ElevatedButton)
                SCButton(
                  onPressed: () {
                    GoRouter.of(context).go('/welcomeScreen');
                  },
                  text: 'CAMPAIGNS',
                  backgroundColor: AppColor.primaryColor,
                  width: 154,
                  height: 60,
                  borderRadius: 20,
                  // You can add more properties as needed
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
