import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';

class FixturesPage extends StatelessWidget {
  const FixturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      appBar: SCAppBar.main(
        title: context.l10n.upcomingSchedule,
        fontSize: 20,
        backgroundColor: AppColor.primary,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.go(AppRoutes.homePage.path);
          },
          icon: SvgPicture.asset(SCIcons.rightArrow),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SCText.headlineMedium(
              text: context.l10n.league,
              context,
            ),
            const SizedBox(height: 13),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
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
                                const SizedBox(width: 15),
                                SCText.labelLarge(
                                  context,
                                  text: context.l10n.redDevils,
                                ),
                                const SizedBox(width: 5),
                                SCText.labelSmall(
                                  context,
                                  text: context.l10n.vs,
                                ),
                                const SizedBox(width: 5),
                                SCText.labelLarge(
                                  context,
                                  text: context.l10n.vGreen,
                                  style:
                                      context.textTheme.displaySmall?.copyWith(
                                    color: AppColor.primary,
                                  ),
                                ),
                                const SizedBox(width: 15),
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
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: SvgPicture.asset(
                                SCIcons.calender,
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 10),
                            SCText.bodySmall(
                              context,
                              text: context.l10n.may2021AM,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: AppColor.scrim,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
