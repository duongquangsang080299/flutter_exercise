import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/data/models/user_model.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/presentation/auth/onboarding_content.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/dots_indicator.dart';

/// Define the OnBoardingPage widget
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

/// Define the state for the OnBoardingPage widget
class _OnBoardingPageState extends State<OnBoardingPage> {
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
          padding:
              // Apply horizontal padding using the getHorizontalSize method
              EdgeInsets.symmetric(horizontal: context.getHorizontalSize(20)),
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
                  itemBuilder: (context, index) => OnBoardingPageContent(
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
                          padding: EdgeInsets.all(context.getHorizontalSize(8)),
                          child: SCDotsIndicator(
                            isActive: index == _pageIndex,
                          ),
                        ),
                      ),
                    ),
                    // Add vertical spacing using the getVerticalSize method
                    SizedBox(height: context.getVerticalSize(40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SCOutlineButton(
                          onPressed: () {
                            context.go('/welcomeScreen');
                          },
                          // Localize the 'Skip' text using context.l10n
                          text: context.l10n.skip,
                          style: context.textTheme.displayMedium?.copyWith(
                            color: AppColor.jetBlackColor,
                            fontWeight: AppFontWeight.semiBold,
                          ),
                          // Use getHorizontalSize and getVerticalSize
                          width: context.getHorizontalSize(164),
                          height: context.getVerticalSize(60),
                        ),
                        const SizedBox(width: 20),
                        SCButton(
                          onPressed: () {
                           context.go('/welcomeScreen');
                          },
                          // Localize the 'CAMPAIGNS' text using context.l10n
                          text: context.l10n.campaigns,
                          style: context.textTheme.displayMedium?.copyWith(
                            color: AppColor.tertiary,
                            fontWeight: AppFontWeight.semiBold,
                          ),
                          backgroundColor: AppColor.primaryColor,
                          width: context.getHorizontalSize(164),
                          height: context.getVerticalSize(60),
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
