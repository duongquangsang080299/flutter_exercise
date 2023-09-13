import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SCAppBar.second(
        toolbarHeight: getVerticalSize(139),
        backgroundColor: AppColor.primary,
        centerTitle: false,
        title: context.l10n.goodMorning,
        subtitle: context.l10n.adrian,
        actions: [
          IconButton(
            icon: SCIcon.notification(
              color: AppColor.secondary,
            ),
            onPressed: () {
              context.go(AppRoutes.fixturesPage.path);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: IconButton(
              icon: SCIcon.menu(
                color: AppColor.secondary,
              ),
              onPressed: () {
                context.go(AppRoutes.fixturesPage.path);
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.bodyLarge(
                    text: context.l10n.netxMatch,
                    context,
                  ),
                ],
              ),
              const SizedBox(height: 13),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.error,
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
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SCIcon.calendar(
                              color: AppColor.veryDarkBlue,
                              width: 17,
                              height: 18,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 13,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SCText.titleMedium(
                                    context,
                                    text: context.l10n.chooseNow,
                                  ),
                                  SCText.titleMedium(
                                    context,
                                    text: context.l10n.chooseNow,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SCIcon.email(
                              color: AppColor.darkBlue,
                              width: 18,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SCText.titleMedium(
                              context,
                              text: context.l10n.championLeague,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 13),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.bodyLarge(
                    text: context.l10n.news,
                    context,
                  ),
                ],
              ),
              const SizedBox(height: 13),
              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SCCard.match(
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColor.flashWhite),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SCText.displayMedium(
                                text: context.l10n.superLiga,
                                style: context.textTheme.displayMedium
                                    ?.copyWith(color: AppColor.hexBlack),
                                context,
                              ),
                              const SizedBox(height: 5),
                              SCText.titleMedium(
                                text: context.l10n.sun01May,
                                style: context.textTheme.titleMedium
                                    ?.copyWith(color: AppColor.blueAzure),
                                context,
                              ),
                              const SizedBox(height: 14),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(SCAssets.logofloatingbutton),
                                  const SizedBox(width: 8),
                                  SvgPicture.asset(SCAssets.logofloatingbutton),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SCText.displayLarge(
                                    context,
                                    text: '4',
                                    style: context.textTheme.displayLarge
                                        ?.copyWith(color: AppColor.tertiary),
                                  ),
                                  const SizedBox(width: 10),
                                  SCText.displayLarge(
                                    context,
                                    text: '-',
                                    style: context.textTheme.displayLarge
                                        ?.copyWith(color: AppColor.tertiary),
                                  ),
                                  const SizedBox(width: 8),
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
                            child: SvgPicture.asset(
                              SCAssets.stadium,
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
                          top: 135,
                          left: 15,
                          child: SCText.bodySmall(
                            text: context.l10n.greatestGamsvVictoryGreatWinner,
                            context,
                          ),
                        ),
                        Positioned(
                          top: 85,
                          left: 10,
                          child: SvgPicture.asset(
                            'assets/images/logofloatingbutton.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
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
                            child: SvgPicture.asset(
                              SCAssets.stadium,
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
                          top: 135,
                          left: 15,
                          child: SCText.bodySmall(
                            text: context.l10n.greatestGamsvVictoryGreatWinner,
                            context,
                          ),
                        ),
                        Positioned(
                          top: 85,
                          left: 10,
                          child: SvgPicture.asset(
                            'assets/images/logofloatingbutton.svg',
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
                      child: SvgPicture.asset(
                        SCAssets.stadium,
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
                      width: context.getHorizontalSize(93),
                      height: 5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
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
                    child: SvgPicture.asset(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          _buildBottomNavItem(Icons.shop, 'Page 1', AppColor.primary),
          _buildBottomNavItem(Icons.shop, 'Page 2', Colors.red),
          _buildBottomNavItem(Icons.shop, 'Page 3', Colors.red),
          _buildBottomNavItem(Icons.shop, 'Page 4', Colors.red),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.secondary,
        child: SvgPicture.asset(SCAssets.logofloatingbutton),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(
    IconData icon,
    String label,
    Color color,
  ) {
    return BottomNavigationBarItem(
      icon: InkWell(
        onTap: () {
          // Handle item tap here
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                icon,
                color: color,
              ),
              onPressed: () {
                // Handle button tap here
              },
            ),
            Text(
              label,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ),
      ),
      label: label,
    );
  }
}
