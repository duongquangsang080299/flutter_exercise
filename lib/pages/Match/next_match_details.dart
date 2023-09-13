import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/text.dart';

class NextMatchPage extends StatelessWidget {
  const NextMatchPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 185,
                  child: SCAppBar.main(
                    backgroundColor: AppColor.tertiary,
                    toolbarHeight: 185,
                    leading: const Icon(Icons.abc),
                    title: 'sadasd',
                  ),
                ),
                Positioned(
                  top: 110,
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: SizedBox(
                      width: 319,
                      height: 440,
                      child: SCCard.match(
                        child: Column(
                          children: [
                            // Centered Image
                            Center(
                              child: SvgPicture.asset(
                                'assets/images/logofloatingbutton.svg',
                                width: 30,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            // Title
                            SCText.displayLarge(
                              context,
                              text: 'Devils Arena Stadium',
                            ),
                            const SizedBox(height: 8),
                            // Subtitle
                            SCText.displayLarge(
                              context,
                              text: 'Devils Arena Stadium',
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/logofloatingbutton.svg',
                                  width: 30,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  children: [
                                    SCText.displayLarge(
                                      context,
                                      text: 'Title 1',
                                    ),
                                    SCText.displayLarge(
                                      context,
                                      text: 'Title 2',
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 8),
                                SvgPicture.asset(
                                  'assets/images/logofloatingbutton.svg',
                                  width: 30,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SCText.displayLarge(
                                  context,
                                  text: 'Title 3',
                                ),
                                SCText.displayLarge(
                                  context,
                                  text: 'Title 4',
                                ),
                              ],
                            ),
                            const SizedBox(height: 28),
                            SCCard.avatar(
                              width: 280,
                              height: 127,
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(
                                    colors: AppColor.linearGradient,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SCText.displayMedium(
                                      context,
                                      text: 'Title 1',
                                    ),
                                    Row(
                                      children: [
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
                                        ),
                                        SCText.displaySmall(
                                          context,
                                          text: 'Title 1',
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
              ],
            ),
            // Add your additional scrollable content here
          ],
        ),
      ),
    );
  }
}
