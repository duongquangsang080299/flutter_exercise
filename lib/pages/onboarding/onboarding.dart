import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/utils.dart';
import 'package:soccer_club_app/data/models/user_model.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/dots_indicator.dart';
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define the OnBoardingPage widget
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

/// Define the state for the OnBoardingPage widget
class _OnBoardingPageState extends State<OnBoardingPage> {
  // Create a PageController for managing pages
  final PageController _pageController = PageController();
  // Store the current page index
  int _pageIndex = 0;
  // Initially disable the button
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    // Add a listener to the PageController to track page changes
    _pageController.addListener(_pageListener);
  }

  /// Callback function called when the page changes
  void _pageListener() {
    setState(() {
      // Update the current page index when the user swipes
      _pageIndex = _pageController.page?.round() ?? 0;

      // Enable the button when the last page is reached
      _isButtonEnabled = _pageIndex == demoData.length - 1;
    });
  }

  @override
  void dispose() {
    // Remove the listener and dispose of the PageController
    _pageController
      ..removeListener(_pageListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: demoData.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      // Update the current page index when the user swipes
                      _pageIndex = index;
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
              SizedBox(height: context.getVerticalSize(30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  demoData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8),

                    /// Apply SCDotsIndicator Widget
                    child: SCDotsIndicator(
                      isActive: index == _pageIndex,
                    ),
                  ),
                ),
              ),
              SizedBox(height: context.getVerticalSize(40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SCOutlineButton(
                      onPressed: () {
                        // Navigate to screen when button is pressed
                        context.go(AppRoutes.welcomeScreen.path);
                      },
                      // Localize the 'Skip' text using context.l10n
                      text: context.l10n.btnSkip,
                      style: context.textTheme.displayMedium?.copyWith(
                        color: AppColor.neonSilver,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SCButton(
                      onPressed: _isButtonEnabled
                          ? () {
                              context.go(AppRoutes.welcomeScreen.path);
                            }
                          : null,
                      text: context.l10n.btnCampaigns,
                      style: context.textTheme.displayMedium?.copyWith(
                        fontWeight: AppFontWeight.semiBold,
                      ),
                      backgroundColor: _isButtonEnabled
                          ? AppColor.primary
                          : AppColor.whiteFlash,
                      borderRadius: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Define OnBoardingBody class
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
        SizedBox(height: context.getVerticalSize(45)),
        Image.asset(
          SCAssets.clubLogo,
          width: getSize(228),
          height: getSize(212),
        ),
        const Spacer(),

        SCText.displayLarge(
          context,
          style: context.textTheme.displayLarge?.copyWith(
            color: AppColor.tertiary,
          ),
          text: title,
        ),
        const SizedBox(height: 4),
        SCText.displayMedium(
          context,
          style: context.textTheme.displayMedium?.copyWith(
            color: AppColor.grayHex,
          ),
          text: subtitle,
        ),
        SizedBox(height: context.getVerticalSize(45)),
        SCText.displaySmall(
          context,
          textAlign: TextAlign.center,
          text: description,
        ),
      ],
    );
  }
}
