import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/text.dart';

class FixturesPage extends StatelessWidget {
  const FixturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define some constant sized boxes for spacing
    const sizedBox5 = SizedBox(width: 5);
    const sizedBox10 = SizedBox(width: 10);
    const sizedBox15 = SizedBox(width: 15);

    return Scaffold(
      appBar: SCAppBar.main(
        title: context.l10n.upcomingSchedule,
        fontSize: 20,
        backgroundColor: AppColor.primary,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Navigate back to home page when leading arrow button is pressed
            context.go(AppRoutes.homePage.path);
          },
          icon: SvgPicture.asset(SCIcons.rightArrow),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SCText.bodyLarge(
                text: context.l10n.league,
                context,
              ),
              const SizedBox(height: 13),

              /// Generate a list of match cards using List.generate
              ...List.generate(6, (index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 49,
                      child: SCCard.match(
                        color: AppColor.whiteSmoke,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.whiteSmoke,
                                offset: Offset(0, 9),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                SCAssets.logoMatch,
                              ),
                              sizedBox15,
                              SCText.displayMedium(
                                context,
                                text: context.l10n.redDevils,
                                style: context.textTheme.displaySmall?.copyWith(
                                  color: AppColor.error,
                                  fontWeight: AppFontWeight.bold,
                                ),
                              ),
                              sizedBox5,
                              SCText.titleMedium(
                                context,
                                text: context.l10n.vs,
                              ),
                              sizedBox5,
                              SCText.displayMedium(
                                context,
                                text: context.l10n.vGreen,
                                style: context.textTheme.displaySmall?.copyWith(
                                  color: AppColor.primary,
                                  fontWeight: AppFontWeight.bold,
                                ),
                              ),
                              sizedBox15,
                              Image.asset(
                                SCAssets.logoSecondMatch,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              SCIcons.calender,
                            ),
                            onPressed: () {},
                          ),
                          sizedBox10,
                          SCText.bodySmall(
                            context,
                            text: context.l10n.may2021AM,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColor.darkBlue,
                            ),
                          ),
                          sizedBox10,
                        ],
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
