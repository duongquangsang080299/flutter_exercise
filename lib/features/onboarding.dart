import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/data_model.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/dots_indicator.dart';

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
        child: Column(
          children: [
            Expanded(
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCOutlineButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                  text: 'SKIP',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColor.jetBlackColor,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                  width: 154,
                  height: 60,
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
                ),
              ],
            ),
          ],
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
        
      ],
    );
  }
}
