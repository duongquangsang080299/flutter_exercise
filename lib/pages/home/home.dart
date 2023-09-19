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
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define a class named HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define a private integer variable to track the current index.
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      // Customize the app bar with specific properties.
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: SCAppBar.second(
          toolbarHeight: getVerticalSize(139),
          backgroundColor: AppColor.primary,
          centerTitle: false,
          leadingWidth: 0,
          title: context.l10n.goodMorning,
          subtitle: context.l10n.adrian,
          actions: [
            // Define a list of action widgets to be displayed on the app bar.
            IconButton(
              // Create an icon button with an SVG icon.
              icon: SvgPicture.asset(
                SCIcons.notifications,
              ),
              onPressed: () {
                // Define onPressed callback to navigate to the notifications page
                context.go(AppRoutes.notificationsPage.path);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              // Apply padding to an icon button.
              padding: const EdgeInsets.all(20),
              child: IconButton(
                icon: SvgPicture.asset(
                  SCIcons.menu,
                ),
                onPressed: () {
                  context.go(AppRoutes.fixturesPage.path);
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.bodyLarge(
                    text: context.l10n.netxMatch,
                    context,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),

            /// Create a custom card widget named 'match'.
            // Use the SCCard.match constructor to create a card.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: SCCard.match(
                child: Container(
                  height: 66,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Create stack circular with different colors.
                        Stack(
                          // Allow items to overflow the stack.
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
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
                              left: 30,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: IconButton(
                            onPressed: () {
                              context.go(AppRoutes.nextMatchPage.path);
                            },
                            icon: const Icon(
                              Icons.more_vert_outlined,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 1),

            /// Create a custom card widget named 'match'.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: SCCard.match(
                child: Container(
                  height: 66,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                    color: AppColor.secondary.withOpacity(0.9),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      // Create a Row of widgets for the left side of card.
                      IconButton(
                        icon: SvgPicture.asset(
                          SCIcons.calender,
                        ),
                        onPressed: () {
                          context.go(AppRoutes.fixturesPage.path);
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SCText.bodySmall(
                            context,
                            text: context.l10n.may9,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColor.darkBlue,
                              fontWeight: AppFontWeight.regular,
                            ),
                          ),
                          SCText.bodySmall(
                            context,
                            text: context.l10n.years,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColor.darkBlue,
                              fontWeight: AppFontWeight.regular,
                            ),
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      // Create a Row of widgets for the right side of card.
                      IconButton(
                        icon: SvgPicture.asset(
                          SCIcons.cup,
                          // color: AppColor.darkBlue,
                        ),
                        onPressed: () {
                          context.go(AppRoutes.fixturesPage.path);
                        },
                      ),
                      SCText.labelLarge(
                        context,
                        text: context.l10n.championLeague,
                        style: context.textTheme.labelLarge
                            ?.copyWith(color: AppColor.blueBlur),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 13),
            // Create a Row widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.bodyLarge(
                    text: context.l10n.news,
                    context,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              padding: const EdgeInsets.only(left: 29),
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  SCCard.match(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: AppColor.whiteFlash),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 11, 20, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Create SCText Display Medium widget for text.
                            SCText.displayMedium(
                              text: context.l10n.superLiga,
                              style: context.textTheme.displayMedium
                                  ?.copyWith(color: AppColor.blackHex),
                              context,
                            ),

                            const SizedBox(height: 5),
                            // Create SCText Body small widget for the text.
                            SCText.bodySmall(
                              text: context.l10n.sun01May,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: AppColor.blueAzure,
                                fontWeight: AppFontWeight.regular,
                              ),
                              context,
                            ),
                            const SizedBox(height: 14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(SCAssets.logoMatch),
                                const SizedBox(
                                  width: 45,
                                ),
                                Image.asset(SCAssets.logoSecondMatch),
                              ],
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 1,
                                    horizontal: 6,
                                  ),
                                  child: SCText.displayLarge(
                                    context,
                                    text: '4',
                                    style: context.textTheme.displayLarge
                                        ?.copyWith(color: AppColor.tertiary),
                                  ),
                                ),
                                const SizedBox(
                                  width: 27,
                                ),
                                SCText.displayLarge(
                                  context,
                                  text: '-',
                                  style: context.textTheme.displayLarge
                                      ?.copyWith(color: AppColor.tertiary),
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                SCText.displayLarge(
                                  context,
                                  text: '1',
                                  style: context.textTheme.displayLarge
                                      ?.copyWith(color: AppColor.tertiary),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  /// Create a Stack widget to overlay multiple widgets.
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColor.primary),
                        ),
                        child: SCCard.avatar(
                          child: Image.asset(
                            SCAssets.playerMatch,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        child: SizedBox(
                          width: 149,
                          height: 42,
                          child: SCCard.avatar(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: AppColor.transparent,
                            child: const SizedBox.shrink(),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 132,
                        left: 7,
                        child: SCText.bodySmall(
                          text: context.l10n.greatestGamsvVictoryGreatWinner,
                          context,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 10,
                        child: SvgPicture.asset(
                          SCIcons.youtube,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  /// Create a Stack widget
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColor.primary),
                        ),
                        child: SCCard.avatar(
                          child: Image.asset(
                            SCAssets.playerMatch,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        child: SizedBox(
                          width: 149,
                          height: 42,
                          child: SCCard.avatar(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: AppColor.transparent,
                            child: const SizedBox.shrink(),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 132,
                        left: 7,
                        child: SCText.bodySmall(
                          text: context.l10n.greatestGamsvVictoryGreatWinner,
                          context,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 10,
                        child: SvgPicture.asset(
                          SCIcons.youtube,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Create a Stack widget
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: 317,
                  height: 199,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppColor.primary),
                  ),
                  child: SCCard.avatar(
                    child: Image.asset(
                      SCAssets.soccerStadium,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  child: SizedBox(
                    width: 317,
                    height: 42,
                    child: SCCard.avatar(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.transparent,
                      child: const SizedBox.shrink(),
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 15,
                  child: Container(
                    decoration: const BoxDecoration(color: AppColor.primary),
                    width: 93,
                    height: 5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),

            /// Create a Stack widget
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SCCard.avatar(
                  width: 318,
                  height: 150,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        colors: AppColor.linearGradient,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 200,
                  child: Image.asset(
                    SCAssets.stadium,
                    width: 145,
                    height: 125,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 150,
                  child: Container(
                    width: 149,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppColor.secondary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: SCText.displaySmall(
                        context,
                        text: context.l10n.getOFF,
                        style: context.textTheme.displaySmall
                            ?.copyWith(color: AppColor.secondary),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      /// Define the bottom navigation bar using SCBottomNavigationBar.
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
