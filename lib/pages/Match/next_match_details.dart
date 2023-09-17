import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/bottom_navigation_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class NextMatchPage extends StatefulWidget {
  const NextMatchPage({super.key});

  @override
  State<NextMatchPage> createState() => _NextMatchPageState();
}

class _NextMatchPageState extends State<NextMatchPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 185,
            pinned: true,
            backgroundColor: AppColor.tertiary,
            flexibleSpace: Stack(
              clipBehavior: Clip.none,
              children: [
                SCAppBar.main(
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  leading: SCIcon.back(
                    color: AppColor.secondary,
                  ),
                  title: context.l10n.matchDetails,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 25,
              ),
              child: SizedBox(
                width: 319,
                height: 440,
                child: SCCard.match(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          SCAssets.logoFirstMatch,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SCText.displaySmall(
                        context,
                        text: context.l10n.devilsArenaStadium,
                        style: context.textTheme.displaySmall?.copyWith(
                          fontWeight: AppFontWeight.medium,
                          color: AppColor.grayHex,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SCText.labelLarge(
                        context,
                        text: context.l10n.may92021,
                        style: context.textTheme.displaySmall?.copyWith(
                          fontWeight: AppFontWeight.medium,
                          color: AppColor.grayHex,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            SCAssets.logoMatchDetail,
                            height: 67,
                          ),
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              SCText.labelLarge(
                                context,
                                text: context.l10n.kickoff,
                                style: context.textTheme.displaySmall?.copyWith(
                                  fontWeight: AppFontWeight.medium,
                                  color: AppColor.blueMainly,
                                ),
                              ),
                              SCText.labelLarge(
                                context,
                                text: context.l10n.time,
                                style: context.textTheme.displaySmall?.copyWith(
                                  fontWeight: AppFontWeight.medium,
                                  color: AppColor.blueMainly,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30),
                          Image.asset(
                            SCAssets.victory,
                            height: 67,
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SCText.displayMedium(
                            context,
                            text: context.l10n.redD,
                            style: context.textTheme.displaySmall?.copyWith(
                              color: AppColor.tertiary,
                            ),
                          ),
                          SCText.displayMedium(
                            context,
                            text: context.l10n.victoryG,
                            style: context.textTheme.displaySmall?.copyWith(
                              color: AppColor.tertiary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 28),
                      SCCard.avatar(
                        width: 280,
                        height: 127,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 7,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(1, -4),
                              end: Alignment(-1, 2),
                              colors: AppColor.linearGradient,
                            ),
                          ),
                          child: Column(
                            children: [
                              SCText.displayMedium(
                                context,
                                text: context.l10n.matchcountdown,
                              ),
                              SizedBox(
                                height: context.getVerticalSize(25),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.timetwo,
                                  ),
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.timeeight,
                                  ),
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.fourseven,
                                  ),
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.one,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.days,
                                    style: context.textTheme.displaySmall
                                        ?.copyWith(
                                      fontWeight: AppFontWeight.medium,
                                      color: AppColor.secondary,
                                    ),
                                  ),
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.hours,
                                    style: context.textTheme.displaySmall
                                        ?.copyWith(
                                      fontWeight: AppFontWeight.medium,
                                      color: AppColor.secondary,
                                    ),
                                  ),
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.mins,
                                    style: context.textTheme.displaySmall
                                        ?.copyWith(
                                      fontWeight: AppFontWeight.medium,
                                      color: AppColor.secondary,
                                    ),
                                  ),
                                  SCText.displaySmall(
                                    context,
                                    text: context.l10n.secs,
                                    style: context.textTheme.displaySmall
                                        ?.copyWith(
                                      fontWeight: AppFontWeight.medium,
                                      color: AppColor.secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
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
                                    SCAssets.logoFirstMatch,
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
                          color: AppColor.secondary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
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
              },
              childCount: 6,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SCBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.secondary,
        child: Image.asset(SCAssets.logoFirstMatch),
      ),
    );
  }
}
