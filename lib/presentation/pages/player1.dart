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
          child: SCIcon.back(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            SizedBox(
              height: context.getVerticalSize(24),
            ),
            SCText.displayLarge(
              context,
              text: context.l10n.textPlayer,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.getVerticalSize(41),
            ),
            // Title Text
            SCText.displaySmall(
              context,
              textAlign: TextAlign.center,
              text: context.l10n.textDescription,
            ),
            SizedBox(height: context.getVerticalSize(61)),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SCCard.avatar(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  width: 149,
                  height: 152,
                  color: AppColor.jetBlackColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SCText.bodySmall(
                        context,
                        text: context.l10n.textFavoritePlayer,
                      ),
                      SCText.bodySmall(
                        context,
                        text: context.l10n.textChooseNow,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColor.mainlyGreen,
                        ),
                      ),
                    ],
                  ),
                ), // Back image
                Positioned(
                  bottom: 70,
                  child: SCCard.avatar(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      'assets/images/default_avatar.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: context.getVerticalSize(44)),
            SCText.displaySmall(context, text: context.l10n.textSwipeToSelect),
            SizedBox(height: context.getVerticalSize(27)),
            SizedBox(
              height: context.getVerticalSize(50),
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
            SizedBox(height: context.getVerticalSize(57)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: context.getHorizontalSize(154),
                  child: SCOutlineButton(
                    onPressed: () {
                      context.go('/welcomeScreen');
                    },
                    // Localize the 'Skip' text using context.l10n
                    text: context.l10n.skip,
                    style: context.textTheme.displayMedium?.copyWith(
                      color: AppColor.neonSilverColor,
                      fontWeight: AppFontWeight.semiBold,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: context.getHorizontalSize(154),
                  child: SCButton(
                    onPressed: () {
                      context.go('/homePage');
                    },
                    // Localize the 'CAMPAIGNS' text using context.l10n
                    text: context.l10n.confirm,
                    style: context.textTheme.displayMedium?.copyWith(
                      fontWeight: AppFontWeight.semiBold,
                    ),
                    backgroundColor: AppColor.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final listAvatars = [
    AvatarModel(id: '1', url: 'assets/images/placeholder.png'),
    AvatarModel(id: '2', url: 'assets/images/image1.png'),
    AvatarModel(id: '3', url: 'assets/images/image1.png'),
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
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        width:context.getHorizontalSize(50) ,
        height: context.getVerticalSize(50),
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
