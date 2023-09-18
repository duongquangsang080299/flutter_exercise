import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/bottom_navigation_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  CustomSliverDelegate({
    required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = (proportion < 0 || proportion > 1) ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: 185,
            child: SCAppBar.main(
              backgroundColor: AppColor.tertiary,
              leading: SCIcon.back(
                color: AppColor.secondary,
                onPressed: () {
                  context.go(AppRoutes.homePage.path);
                },
              ),
              elevation: 0,
              fontSize: 20,
              title: context.l10n.matchDetails,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: cardTopPosition > 0 ? (cardTopPosition / 1.2) : 0,
            bottom: 0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28 * percent),
                child: SizedBox(
                  height: context.getVerticalSize(440),
                  child: SCCard.match(
                    child: Column(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            SCIcons.arena,
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
                          style: context.textTheme.labelLarge?.copyWith(
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
                                  style: context.textTheme.labelLarge?.copyWith(
                                    fontWeight: AppFontWeight.medium,
                                    color: AppColor.blueMainly,
                                  ),
                                ),
                                SCText.labelLarge(
                                  context,
                                  text: context.l10n.time,
                                  style: context.textTheme.labelLarge?.copyWith(
                                    fontWeight: AppFontWeight.medium,
                                    color: AppColor.blueMainly,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Image.asset(
                              SCAssets.logoMatch,
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
                        const SizedBox(height: 28),
                        SizedBox(
                          width: 280,
                          height: 127,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverDelegate(
                expandedHeight: context.getVerticalSize(319),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
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
                          SCCard.match(
                            child: Container(
                              height: 50,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColor.error,
                                              ),
                                            ),
                                            const Positioned(
                                              top: 0,
                                              left: 30,
                                              child: Text('1'),
                                            ),
                                          ],
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
                                        Stack(
                                          children: [
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColor.error,
                                              ),
                                            ),
                                            const Positioned(
                                              top: 0,
                                              left: 30,
                                              child: Text('1'),
                                            ),
                                          ],
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
                              height: 50,
                              width: 318,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                gradient: LinearGradient(
                                  colors: AppColor.linearShadow,
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
                                      style:
                                          context.textTheme.bodySmall?.copyWith(
                                        color: AppColor.darkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
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
        child: Image.asset(SCAssets.logoMatch),
      ),
    );
  }
}
