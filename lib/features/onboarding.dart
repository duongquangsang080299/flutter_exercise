import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/theme/app_theme.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/widgets/button.dart';
///
class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demoData.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnBoardingContent(
                  image: demoData[index].image,
                  title: demoData[index].title,
                  description: demoData[index].description,
                  subtitle: demoData[index].subtitle,
                ),
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                (index) => Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentPageIndex
                        ? AppColor.primaryColor
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCOutlineButton(
                  onPressed: () {
                    // Handle SKIP button click
                  },
                  text: 'SKIP',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.jetBlackColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  width: 154,
                  height: 60,
                  borderRadius: 30,
                ),
                const SizedBox(width: 20),
                SCButton(
                  onPressed: () {
                    GoRouter.of(context).go('/welcomeScreen');
                  },
                  text: 'CAMPAIGNS',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.whiteSmokeColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  backgroundColor: AppColor.primaryColor,
                  width: 154,
                  height: 60,
                  borderRadius: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardData {
  OnBoardData({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  final String image;
  final String title;
  final String subtitle;
  final String description;
}

final List<OnBoardData> demoData = [
  OnBoardData(
    image: 'assets/images/clogo.png',
    title: 'Good Afternoon',
    description: 'Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor '
        'incididunt ut labore et dolore magna aliqua',
    subtitle: 'Welcome Back',
  ),
  OnBoardData(
    image: 'assets/images/clogo.png',
    title: 'Good Afternoon',
    description: 'Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor '
        'incididunt ut labore et dolore magna aliqua',
    subtitle: 'Welcome Back',
  ),
  OnBoardData(
    image: 'assets/images/clogo.png',
    title: 'Good Afternoon',
    description: 'Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor '
        'incididunt ut labore et dolore magna aliqua',
    subtitle: 'Welcome Back',
  ),
  OnBoardData(
    image: 'assets/images/clogo.png',
    title: 'Good Afternoon',
    description: 'Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor '
        'incididunt ut labore et dolore magna aliqua',
    subtitle: 'Welcome Back',
  ),
];


class OnBoardingContent extends StatelessWidget {

  const OnBoardingContent({
    required this.image,
    required this.title,
    required this.description,
    required this.subtitle,
    super.key,
  });

  final String image;
  final String title;
  final String description;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 243,
          height: 309,
          child: Image.asset(image),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: AppColor.jetBlackColor,
                fontWeight: AppFontWeight.semiBold,
              ),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
