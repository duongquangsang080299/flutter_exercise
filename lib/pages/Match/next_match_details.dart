import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/bottom_navigation_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
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
      body: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: MySliverAppBar(expandedHeight: 200),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: context.getVerticalSize(380),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SCText.bodyLarge(
                            text: context.l10n.matchs,
                            context,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      ...List.generate(4, (index) {
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
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.redBlur,
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 12,
                                            child: SCText.displayLarge(
                                              context,
                                              text: context.l10n.numbertwo,
                                              style: context
                                                  .textTheme.displayLarge
                                                  ?.copyWith(
                                                color: AppColor.secondary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.primary,
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 13,
                                            child: SCText.displayLarge(
                                              context,
                                              text: context.l10n.numberone,
                                              style: context
                                                  .textTheme.displayLarge
                                                  ?.copyWith(
                                                color: AppColor.secondary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: SvgPicture.asset(
                                    SCIcons.calender,
                                  ),
                                  onPressed: () {},
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
                              ],
                            ),
                          ],
                        );
                      })
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: SCBottomNavigationBar(
        // Set the current selected index.
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            // Update the current index when tapped.
            _currentIndex = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: AppColor.secondary,
        child: Image.asset(SCAssets.logoMatch),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  MySliverAppBar({required this.expandedHeight});
  final double expandedHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        SCAppBar.main(
          backgroundColor: AppColor.tertiary,
          leading: IconButton(
            onPressed: () {
              context.go(AppRoutes.homePage.path);
            },
            icon: SvgPicture.asset(SCIcons.rightArrow),
          ),
          centerTitle: true,
          elevation: 0,
          fontSize: 20,
          title: context.l10n.matchDetails,
        ),
        Positioned(
          top: expandedHeight / 1.5 - shrinkOffset,
          right: 0,
          left: 0,
          child: Opacity(
            opacity: 1 - shrinkOffset / expandedHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: SizedBox(
                height: context.getVerticalSize(440),
                child: SCCard.match(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            SCIcons.arena,
                            height: getSize(100),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SCText.displaySmall(
                          context,
                          text: context.l10n.devilsArenaStadium,
                          style: context.textTheme.displaySmall?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.grayHex,
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        SCText.labelLarge(
                          context,
                          text: context.l10n.may92021,
                          style: context.textTheme.labelLarge?.copyWith(
                            fontWeight: AppFontWeight.medium,
                            color: AppColor.grayHex,
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
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
                                  style: context.textTheme.labelLarge?.copyWith(
                                    fontWeight: AppFontWeight.medium,
                                    color: AppColor.blueMainly,
                                  ),
                                ),
                                SCText.labelMedium(
                                  context,
                                  text: context.l10n.time,
                                  style:
                                      context.textTheme.labelMedium?.copyWith(
                                    fontWeight: AppFontWeight.bold,
                                    color: AppColor.blueMainly,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Image.asset(
                              SCAssets.logoMatchDetail,
                              height: 67,
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SCText.displayMedium(
                              context,
                              text: context.l10n.redD,
                              style: context.textTheme.displayMedium
                                  ?.copyWith(color: AppColor.tertiary),
                            ),
                            const SizedBox(
                              width: 143,
                            ),
                            SCText.displayMedium(
                              context,
                              text: context.l10n.victoryG,
                              style: context.textTheme.displayMedium
                                  ?.copyWith(color: AppColor.tertiary),
                            ),
                          ],
                        ),
                        SizedBox(height: context.getVerticalSize(28)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 127,
                            width: 280,
                            child: SCCard.avatar(
                              child: Container(
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
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SCText.displayMedium(
                                      context,
                                      text: context.l10n.matchcountdown,
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SCText.labelMedium(
                                          context,
                                          text: context.l10n.timetwo,
                                        ),
                                        SCText.labelMedium(
                                          context,
                                          text: context.l10n.dots,
                                        ),
                                        SCText.labelMedium(
                                          context,
                                          text: context.l10n.timeeight,
                                        ),
                                        SCText.labelMedium(
                                          context,
                                          text: context.l10n.dots,
                                        ),
                                        SCText.labelMedium(
                                          context,
                                          text: context.l10n.fourseven,
                                        ),
                                        SCText.labelMedium(
                                          context,
                                          text: context.l10n.dots,
                                        ),
                                        SCText.labelMedium(
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
                                          MainAxisAlignment.spaceAround,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
