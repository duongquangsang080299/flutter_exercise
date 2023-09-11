import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/data/models/user_model.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/dots_indicator.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define the OnBoardingPage widget
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

/// Define the state for the OnBoardingPage widget
class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

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
              EdgeInsets.symmetric(horizontal: context.getHorizontalSize(28)),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: demoData.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnBoardingBody(
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
                            isActive: index == _currentIndex,
                          ),
                        ),
                      ),
                    ),
                    // Add vertical spacing using the getVerticalSize method
                    SizedBox(height: context.getVerticalSize(40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SCOutlineButton(
                            onPressed: () {
                              context.go(AppRoutes.welcomeScreen.path);
                            },
                            // Localize the 'Skip' text using context.l10n
                            text: context.l10n.btnSkip,
                            style: context.textTheme.displayMedium?.copyWith(
                              color: AppColor.jetBlack,
                              fontWeight: AppFontWeight.semiBold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 11),
                        Expanded(
                          child: SCButton(
                            onPressed: () {
                               context.go(AppRoutes.welcomeScreen.path);
                            },
                            // Localize the 'CAMPAIGNS' text using context.l10n
                            text: context.l10n.btnCampaigns,
                            style: context.textTheme.displayMedium?.copyWith(
                              color: AppColor.tertiary,
                              fontWeight: AppFontWeight.semiBold,
                            ),
                            backgroundColor: AppColor.primary,
                          ),
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

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
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
        // Add vertical spacing using the getVerticalSize method
        SizedBox(height: context.getVerticalSize(90)),
        Image.asset(
          image,
          width: context.getSize(243),
          height: context.getSize(309),
        ),
        // Add vertical spacing using the getVerticalSize method
        SizedBox(height: context.getVerticalSize(60)),
        SCText.displayLarge(
          context,
          style: context.textTheme.displayLarge?.copyWith(
            color: AppColor.tertiary,
          ),
          text: title,
        ),
        const SizedBox(height: 10),
        SCText.displayMedium(
          context,
          style: context.textTheme.displayMedium?.copyWith(
            color: AppColor.hexGray,
          ),
          text: subtitle,
        ),
        const SizedBox(height: 20),
        SCText.displaySmall(
          context,
          style: context.textTheme.displaySmall?.copyWith(
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
