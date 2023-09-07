import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/data/models/user_model.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/dots_indicator.dart';
import 'package:soccer_club_app/widgets/text.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: demoData.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
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
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        demoData.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: SCDotsIndicator(
                            isActive: index == _pageIndex,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SCOutlineButton(
                          onPressed: () {
                            GoRouter.of(context).go('/welcomeScreen');
                          },
                          text: 'SKIP',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: AppColor.jetBlackColor,
                                fontWeight: AppFontWeight.semiBold,
                              ),
                          width: 164,
                          height: 60,
                        ),
                        const SizedBox(width: 20),
                        SCButton(
                          onPressed: () {
                            GoRouter.of(context).go('/welcomeScreen');
                          },
                          text: 'CAMPAIGNS',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: AppColor.secondaryColor,
                                fontWeight: AppFontWeight.semiBold,
                              ),
                          backgroundColor: AppColor.primaryColor,
                          width: 164,
                          height: 60,
                        ),
                      ],
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
      children: [
        const SizedBox(height: 90),
        Image.asset(image, width: 243, height: 309),
        const SizedBox(height: 60),
        SCText.displayLarge(
          context,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: AppColor.tertiary,
                fontWeight: AppFontWeight.semiBold,
              ),
          text: title,
        ),
        const SizedBox(height: 10),
        SCText.bodyMedium(
          context,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: AppColor.textSecondary,
                fontWeight: AppFontWeight.medium,
              ),
          text: subtitle,
        ),
        const SizedBox(height: 20),
        SCText.bodySmall(
          context,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColor.tertiary,
                fontWeight: AppFontWeight.regular,
              ),
          textAlign: TextAlign.center,
          text: description,
        ),
      ],
    );
  }
}
