import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

class FixturesPage extends StatelessWidget {
  const FixturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SCAppBar.main(
          title: context.l10n.upcomingSchedule,
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.displayLarge(
                    text: context.l10n.league,
                    context,
                  ),
                ],
              ),
              const SizedBox(height: 13),
              ...List.generate(6, (index) {
                return Column(
                  children: [
                    SCCard.match(
                      child: Container(
                        height: 66,
                        width: 318,
                        decoration: const BoxDecoration(
                          color: AppColor.whiteSmoke,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.whiteSmoke,
                              offset: Offset(0, 80),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    SCAssets.logoMatch,
                                    width: 40,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 15),
                                  SCText.displayMedium(
                                    context,
                                    text: context.l10n.redDevils,
                                    style: context.textTheme.displaySmall
                                        ?.copyWith(
                                      color: AppColor.error,
                                      fontWeight: AppFontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  SCText.titleMedium(
                                    context,
                                    text: context.l10n.vs,
                                  ),
                                  const SizedBox(width: 5),
                                  SCText.displayMedium(
                                    context,
                                    text: context.l10n.vGreen,
                                    style: context.textTheme.displaySmall
                                        ?.copyWith(
                                      color: AppColor.primary,
                                      fontWeight: AppFontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Image.asset(
                                    SCAssets.logoSecondMatch,
                                    width: 40,
                                    height: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    SCCard.match(
                      child: Container(
                        width: 318,
                        height: 66,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          gradient:
                              LinearGradient(colors: AppColor.linearShadow),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SCIcon.calendar(
                                color: AppColor.darkBlue,
                                width: 12,
                                height: 12,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SCText.bodySmall(
                                context,
                                text: context.l10n.may2021AM,
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: AppColor.darkBlue,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
