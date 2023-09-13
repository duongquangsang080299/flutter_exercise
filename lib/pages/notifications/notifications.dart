import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SCAppBar.main(
        title: context.l10n.notifications,
        backgroundColor: AppColor.primary,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context.go(AppRoutes.homePage.path);
          },
          child: SCIcon.back(
            color: AppColor.secondary,
          ),
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
                  final isCard = index < 2;
                  final borderColor =
                      isCard ? AppColor.jetBlack : AppColor.primary;
                  final backgroundColor =
                      isCard ? AppColor.secondary : AppColor.blueAlice;
                  final textColor =
                      isCard ? AppColor.tertiary : AppColor.primary;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 19),
                    child: SCCard.match(
                      child: Container(
                        width: 319,
                        height: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: borderColor),
                          color: backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(28),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SCText.displaySmall(
                                text: context.l10n.continuePayment,
                                style: context.textTheme.displaySmall?.copyWith(
                                  color: textColor,
                                  fontWeight: AppFontWeight.bold,
                                ),
                                context,
                              ),
                              const SizedBox(height: 5),
                              SCText.bodyMedium(
                                text: context.l10n.textDescriptionOnboarding,
                                context,
                              ),
                              const SizedBox(height: 5),
                              SCText.titleMedium(
                                text: context.l10n.may2021AM,
                                style: context.textTheme.titleMedium,
                                context,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: 8, // Number of cards
              ),
            ),
          ],
        ),
      ),
    );
  }
}
