import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/core/routes/routes.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';

/// Define a class named HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define a private integer variable to track the current index.
  int _currentIndex = 0;

  final authRepo = AuthRepo();

  @override
  Widget build(BuildContext context) {
    const sizedBox13 = SizedBox(height: 13);

    return SCScaffold(
      // Customize the app bar with specific properties.
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(159),
        child: SCAppBar.second(
          toolbarHeight: getVerticalSize(139),
          centerTitle: false,
          leadingWidth: 30,
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
                // Define onPressed callback navigate to the notifications page
                context.go(AppRoutes.notificationsPage.path);
              },
            ),
            const SizedBox(width: 10),
            Padding(
              // Apply padding to an icon button.
              padding: const EdgeInsets.all(20),
              child: IconButton(
                icon: SvgPicture.asset(
                  SCIcons.menu,
                ),
                onPressed: () async {
                  await authRepo.signOut();
                  context.go(AppRoutes.onBoarding.path);
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
                  SCText.headlineMedium(
                    text: context.l10n.netxMatch,
                    context,
                  ),
                ],
              ),
            ),
            sizedBox13,
            const _CardInfo(),
            sizedBox13,
            // Create a Row widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.headlineMedium(
                    text: context.l10n.news,
                    context,
                  ),
                ],
              ),
            ),
            sizedBox13,
            const _MatchNews(),
            const SizedBox(height: 20),

            /// Create a Stack widget
            const _LiveMatch(),
            const SizedBox(height: 18),

            /// Create a Stack widget
            const _Stadium(),
            SizedBox(height: context.getVerticalSize(50)),
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

class _Stadium extends StatelessWidget {
  const _Stadium();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SCCard.avatar(
            height: 150,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                gradient: LinearGradient(
                  begin: Alignment(1, -4),
                  end: Alignment(-1, 2),
                  colors: AppColor.linearGradient,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 230,
            child: Image.asset(
              SCAssets.stadium,
              width: getSize(145),
              height: getSize(125),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 170,
            child: Container(
              width: 149,
              height: 30,
              decoration: BoxDecoration(
                color: AppColor.secondary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: SCText.bodyLarge(
                  context,
                  text: context.l10n.getOFF,
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: AppColor.secondary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LiveMatch extends StatelessWidget {
  const _LiveMatch();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 199,
            child: SCCard.avatar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                side: BorderSide(color: AppColor.primary),
              ),
              child: Image.asset(
                SCAssets.soccerStadium,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: SizedBox(
              width: 317,
              height: 71,
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
            top: 145,
            left: 15,
            child: Container(
              decoration: const BoxDecoration(color: AppColor.primary),
              width: 93,
              height: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class _MatchNews extends StatelessWidget {
  const _MatchNews();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 29),
      // width: double.infinity,
      height: 175,
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
                    SCText.headlineSmall(
                      text: context.l10n.superLiga,
                      style: context.textTheme.headlineSmall
                          ?.copyWith(color: AppColor.blackHex),
                      context,
                    ),

                    const SizedBox(height: 5),
                    // Create SCText Body small widget for the text.
                    SCText.labelMedium(
                      text: context.l10n.sun01May,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: AppColor.blueAzure,
                      ),
                      context,
                    ),
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(SCAssets.logoMatch),
                        SizedBox(
                          width: getSize(45),
                        ),
                        Image.asset(SCAssets.logoSecondMatch),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 1,
                            horizontal: 6,
                          ),
                          child: SCText.displaySmall(
                            context,
                            text: context.l10n.numberfour,
                          ),
                        ),
                        const SizedBox(
                          width: 27,
                        ),
                        SCText.displaySmall(
                          context,
                          text: context.l10n.dash,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        SCText.displaySmall(
                          context,
                          text: context.l10n.numberone,
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
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: AppColor.primary),
                ),
                child: SCCard.avatar(
                  child: Image.asset(
                    SCAssets.playerMatch,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
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
                child: SCText.titleLarge(
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
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: AppColor.primary),
                ),
                child: SCCard.avatar(
                  child: Image.asset(
                    SCAssets.playerMatch,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
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
                child: SCText.titleLarge(
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
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Create a custom card widget named 'match'.
        // Use the SCCard.match constructor to create a card.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: SizedBox(
            height: 66,
            child: GestureDetector(
              onTap: () {
                context.go(AppRoutes.nextMatchPage.path);
              },
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
                        offset: Offset(0, 80),
                        blurRadius: 8,
                      ),
                    ],
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
                              color: AppColor.onError,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 25,
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
                      IconButton(
                        onPressed: () {
                          context.go(AppRoutes.nextMatchPage.path);
                        },
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          color: AppColor.blueAzure,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        /// Create a custom card widget named 'match'.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: SCCard.match(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  // Create a Row of widgets for the left side of card.
                  IconButton(
                    icon: SvgPicture.asset(
                      SCIcons.calender,
                    ),
                    onPressed: () {},
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SCText.bodySmall(
                        context,
                        text: context.l10n.may9,
                      ),
                      SCText.bodySmall(
                        context,
                        text: context.l10n.years,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColor.scrim,
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
                  SCText.bodySmall(
                    context,
                    text: context.l10n.championLeague,
                    style: context.textTheme.bodySmall
                        ?.copyWith(color: AppColor.blueBlur),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}