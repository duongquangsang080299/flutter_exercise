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
import 'package:soccer_club_app/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/layout/scaffold.dart';
import 'package:soccer_club_app/views/widgets/app_bar.dart';
import 'package:soccer_club_app/views/widgets/card.dart';
import 'package:soccer_club_app/views/widgets/text.dart';

class NextMatchPage extends StatefulWidget {
  const NextMatchPage({super.key});

  @override
  State<NextMatchPage> createState() => _NextMatchPageState();
}

class _NextMatchPageState extends State<NextMatchPage> {
  // Initialize a variable to keep track of the current index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            // Header should remain pinned
            pinned: true,
            // Custom SliverAppBar delegate
            delegate: MySliverAppBar(expandedHeight: 200),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: context.getVerticalSize(400),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SCText.bodyLarge(
                      text: context.l10n.matchs,
                      context,
                    ),
                    const SizedBox(
                      height: 13,
                    ),

                    /// Generate a list of match cards using List.generate
                    ...List.generate(4, (index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: context.getVerticalSize(49),
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
                                child: const _CardMatchs(),
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
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ]),
          ),
        ],
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

      /// Define the location of the floating action button.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// Define the floating action button.
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: AppColor.secondary,
        child: Image.asset(SCAssets.logoMatch),
      ),
    );
  }
}

class _CardMatchs extends StatelessWidget {
  const _CardMatchs();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.onError,
              ),
            ),
            Positioned(
              top: 0,
              left: 12,
              child: SCText.headlineLarge(
                context,
                text: context.l10n.numbertwo,
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
              child: SCText.headlineLarge(
                context,
                text: context.l10n.numberone,
              ),
            ),
          ],
        ),
      ],
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
    // Stack widget allows for overlapping content.
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
              child: SCCard.match(
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
                    SCText.bodyLarge(
                      context,
                      text: context.l10n.devilsArenaStadium,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColor.onTertiaryContainer,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    SCText.bodySmall(
                      context,
                      text: context.l10n.may92021,
                      style: context.textTheme.labelLarge?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.onTertiaryContainer,
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
                          height: getSize(67),
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            SCText.bodySmall(
                              context,
                              text: context.l10n.kickoff,
                              style: context.textTheme.bodySmall?.copyWith(
                                fontWeight: AppFontWeight.medium,
                                color: AppColor.blueMainly,
                              ),
                            ),
                            SCText.displayLarge(
                              context,
                              text: context.l10n.time,
                              style: context.textTheme.displayLarge?.copyWith(
                                color: AppColor.blueMainly,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Image.asset(
                          SCAssets.logoMatchDetail,
                          height: getSize(67),
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
                        SCText.headlineSmall(
                          context,
                          text: context.l10n.redD,
                          style: context.textTheme.headlineSmall
                              ?.copyWith(color: AppColor.tertiary),
                        ),
                        const SizedBox(
                          width: 143,
                        ),
                        SCText.headlineSmall(
                          context,
                          text: context.l10n.victoryG,
                          style: context.textTheme.headlineSmall
                              ?.copyWith(color: AppColor.tertiary),
                        ),
                      ],
                    ),
                    SizedBox(height: context.getVerticalSize(28)),
                    const _MatchCountDown(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Implement required methods from SliverPersistentHeaderDelegate
  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class _MatchCountDown extends StatelessWidget {
  const _MatchCountDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
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
                SCText.headlineSmall(
                  context,
                  text: context.l10n.matchcountdown,
                ),
                SizedBox(
                  height: context.getVerticalSize(25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SCText.displayLarge(
                      context,
                      text: context.l10n.timetwo,
                    ),
                    SCText.displayLarge(
                      context,
                      text: context.l10n.dots,
                    ),
                    SCText.displayLarge(
                      context,
                      text: context.l10n.timeeight,
                    ),
                    SCText.displayLarge(
                      context,
                      text: context.l10n.dots,
                    ),
                    SCText.displayLarge(
                      context,
                      text: context.l10n.fourseven,
                    ),
                    SCText.displayLarge(
                      context,
                      text: context.l10n.dots,
                    ),
                    SCText.displayLarge(
                      context,
                      text: context.l10n.one,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SCText.bodyLarge(
                      context,
                      text: context.l10n.days,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.secondary,
                      ),
                    ),
                    SCText.bodyLarge(
                      context,
                      text: context.l10n.hours,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.secondary,
                      ),
                    ),
                    SCText.bodyLarge(
                      context,
                      text: context.l10n.mins,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: AppFontWeight.medium,
                        color: AppColor.secondary,
                      ),
                    ),
                    SCText.bodyLarge(
                      context,
                      text: context.l10n.secs,
                      style: context.textTheme.bodyLarge?.copyWith(
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
    );
  }
}
