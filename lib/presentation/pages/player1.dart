import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/utils/size_utils.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/signIn');
          },
          child: SCIcon.back(color: Colors.black, size: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            const SizedBox(height: 44),
            SCText.displayLarge(
              context,
              text: 'Who is your favourite Victory players? ',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: AppFontWeight.semiBold,
                  ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 41),

            // Title Text
            SCText.bodySmall(
              context,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColor.tertiary,
                    fontWeight: AppFontWeight.regular,
                  ),
              text: 'Amet minim mollit non deserunt ullamcoei italiqua dolor'
                  ' do amet sintelit officia.',
            ),
            const SizedBox(height: 79),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SCCard.avatar(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  width: 149,
                  height: 152,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SCText.bodyMedium(
                        context,
                        text: 'Favorite Player',
                      ),
                      SCText.bodyMedium(
                        context,
                        text: 'Choose Now',
                      ),
                    ],
                  ),
                ), // Back image
                Positioned(
                  bottom: 70,
                  child: SCCard.avatar(
                    child: Image.asset(
                      'assets/images/default_avatar.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 44),
            SCText.displaySmall(context, text: context.l10n.textCondition),
            const SizedBox(height: 27),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: listAvatars.length,
                itemBuilder: (_, i) {
                  return AvatarItem(
                    avatar: listAvatars[i],
                  );
                },
              ),
            ),
            const SizedBox(height: 57),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCOutlineButton(
                  onPressed: () {
                    context.go('/welcomeScreen');
                  },
                  // Localize the 'Skip' text using context.l10n
                  text: context.l10n.skip,
                  style: context.textTheme.displayMedium?.copyWith(
                    color: AppColor.jetBlackColor,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  // Use getHorizontalSize and getVerticalSize
                  width: context.getHorizontalSize(164),
                  height: context.getVerticalSize(60),
                ),
                const SizedBox(width: 20),
                SCButton(
                  onPressed: () {
                    context.go('/homePage');
                  },
                  // Localize the 'CAMPAIGNS' text using context.l10n
                  text: context.l10n.campaigns,
                  style: context.textTheme.displayMedium?.copyWith(
                    color: AppColor.tertiary,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  backgroundColor: AppColor.primaryColor,
                  width: context.getHorizontalSize(134),
                  height: context.getVerticalSize(60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final listAvatars = [
    AvatarModel(id: '1', url: 'assets/images/image1.png'),
    AvatarModel(id: '2', url: 'assets/images/logo.png'),
    AvatarModel(id: '3', url: 'assets/images/ronaldo.png'),
    AvatarModel(id: '4', url: 'assets/images/image1.png'),
    AvatarModel(id: '5', url: 'assets/images/image1.png'),
    AvatarModel(id: '6', url: 'assets/images/image1.png'),
    AvatarModel(id: '7', url: 'assets/images/image1.png'),
  ];
}

class AvatarItem extends StatelessWidget {
  const AvatarItem({super.key, this.avatar});

  final AvatarModel? avatar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 24),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        width: 50,
        height: 50,
        child: Image.asset(avatar?.url ?? ''),
      ),
    );
  }
}

class AvatarModel {
  AvatarModel({required this.url, required this.id});

  final String url;
  final String id;
}
