import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/utils.dart';
import 'package:soccer_club_app/data/models/user_model.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
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
  int _pageIndex = 0;
  // Initially disable the button
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    // Add a listener to the PageController to track page changes
    _pageController.addListener(_pageListener);
  }

  void _pageListener() {
    setState(() {
      _pageIndex = _pageController.page?.round() ?? 0;

      // Enable the button when the last page is reached
      _isButtonEnabled = _pageIndex == demoData.length - 1;
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);
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
                  itemBuilder: (context, index) => OnBoardingBody(
                    image: demoData[index].image,
                    title: demoData[index].title,
                    description: demoData[index].description,
                    subtitle: demoData[index].subtitle,
                  ),
                ),
              ),
              SizedBox(height: context.getVerticalSize(30)),
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
                        const SizedBox(width: 20),
                        Expanded(
                          child: SCButton(
                            onPressed: _isButtonEnabled
                                ? () {
                                    context.go(AppRoutes.welcomeScreen.path);
                                  }
                                : null,
                            text: context.l10n.btnCampaigns,
                            style: _isButtonEnabled
                                ? context.textTheme.displayMedium?.copyWith(
                                    fontWeight: AppFontWeight.semiBold,
                                  )
                                : context.textTheme.displayMedium?.copyWith(
                                    fontWeight: AppFontWeight.semiBold,
                                    color: AppColor.suvaGray,
                                  ),
                            backgroundColor: AppColor.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
        SvgPicture.asset(
          SCAssets.clubLogo,
          width: context.getSize(228),
          height: context.getSize(212),
        ),
        const Spacer(),
        // Add vertical spacing using the getVerticalSize method
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
              color: AppColor.hexGray, fontWeight: AppFontWeight.medium),
          text: subtitle,
        ),
        const SizedBox(height: 45),
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
