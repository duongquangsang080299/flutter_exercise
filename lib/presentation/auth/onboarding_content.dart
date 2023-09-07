import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Create the OnBoardingPageContent widget
class OnBoardingPageContent extends StatelessWidget {
  const OnBoardingPageContent({
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
          width: context.getHorizontalSize(243),
          height: context.getVerticalSize(309),
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
            color: AppColor.textSecondary,
          ),
          text: subtitle,
        ),
        const SizedBox(height: 20),
        SCText.displaySmall(
          context,
          style: context.textTheme.bodyLarge?.copyWith(
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
