import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/typography/app_text_style.dart';
import 'package:soccer_club_app/widgets/dots_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.title,
    required this.description,
    required this.imagePath,
    super.key,
  });
  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.titleMedium,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyBold,
        ),
        const SizedBox(height: 20),
        Image.asset(
          imagePath,
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your logo image widget
            Image.asset(
              'assets/images/logo.png',
              width: 243,
              height: 309,
            ),

            const SizedBox(height: 30),

            // Display Large Text
            Text(
              'Good Afternoon',
              style: AppTextStyles.titleLarge,
            ),

            const SizedBox(height: 10),

            // Display Medium Text
            Text(
              'Welcome Back',
              style: AppTextStyles.titleMedium,
            ),

            const SizedBox(height: 20),

            // Title Description Text
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viv.',
              textAlign: TextAlign.center,
              style: AppTextStyles.extralBold,
            ),

            const SizedBox(height: 30),

            // PageView for onboarding screens
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                // Your onboarding pages here
                // Create a widget for each onboarding page
                OnboardingPage(
                  title: 'Step 1',
                  description: 'Lorem ipsum dolor sit amet',
                  imagePath: 'assets/onboarding1.png',
                ),
                OnboardingPage(
                  title: 'Step 2',
                  description: 'Lorem ipsum dolor sit amet',
                  imagePath: 'assets/onboarding2.png',
                ),
                OnboardingPage(
                  title: 'Step 3',
                  description: 'Lorem ipsum dolor sit amet',
                  imagePath: 'assets/onboarding3.png',
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Dots Indicator widget
            SCDotsIndicator(
              itemCount:
                  3, // Replace with the actual number of onboarding pages
              currentIndex: _currentPage,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Outline Button
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Skip'),
                ),

                const SizedBox(width: 20),

                // Elevated Button
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
