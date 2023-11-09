import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/core/routes/routes.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a constant sized box for spacing
    const sizedBox14 = SizedBox(height: 14);

    return Scaffold(
      appBar: SCAppBar.main(
        title: context.l10n.notifications,
        fontSize: 20,
        centerTitle: true,
        backgroundColor: AppColor.primary,
        leading: IconButton(
          onPressed: () {
            // Navigate back to home page when leading arrow button is pressed
            context.go(AppRoutes.homePage.path);
          },
          icon: SvgPicture.asset(SCIcons.rightArrow),
        ),
        actions: [
          Opacity(
            opacity: 0.5,
            child: TextButton(
              onPressed: () {},
              child: SCText.bodyMedium(
                context,
                text: context.l10n.clear,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: AppColor.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  // Determine if it's a card based on the index
                  final isCard = index < 2;
                  // Set border color
                  final borderColor =
                      isCard ? AppColor.onTertiary : AppColor.primary;
                  // Set background color
                  final backgroundColor =
                      isCard ? AppColor.secondary : AppColor.blueAlice;
                  // Set text color
                  final textColor =
                      isCard ? AppColor.tertiary : AppColor.primary;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SCCard.match(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: borderColor),
                          color: backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 13,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SCText.bodyLarge(
                                text: context.l10n.continuePayment,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  fontWeight: AppFontWeight.bold,
                                  color: textColor,
                                ),
                                context,
                              ),
                              sizedBox14,
                              SCText.bodyMedium(
                                text: context.l10n.textDescriptionOnboarding,
                                style: context.textTheme.bodyMedium?.copyWith(
                                  color: AppColor.onTertiaryContainer,
                                ),
                                context,
                              ),
                              sizedBox14,
                              SCText.bodySmall(
                                text: context.l10n.may2021AM,
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: AppColor.onTertiaryContainer,
                                ),
                                context,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: 7, // Number of cards
              ),
            ),
          ],
        ),
      ),
    );
  }
}