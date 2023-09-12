import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
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
            context.go(AppRoutes.signIn.path);
          },
          child: SCIcon.back(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Column(
            children: [
              SizedBox(
                height: context.getVerticalSize(24),
              ),
              SCText.displayLarge(
                context,
                text: context.l10n.whoIsYourFavouriteVictoryPlayers,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.getVerticalSize(41),
              ),
              // Title Text
              SCText.displaySmall(
                context,
                textAlign: TextAlign.center,
                text: context.l10n.description,
              ),
              SizedBox(height: context.getVerticalSize(61)),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  SCCard.avatar(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    width: context.getHorizontalSize(141),
                    height: context.getVerticalSize(152),
                    color: AppColor.jetBlack,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SCText.bodySmall(
                          context,
                          text: context.l10n.favoritePlayer,
                        ),
                        const SizedBox(height: 5),
                        SCText.bodySmall(
                          context,
                          text: context.l10n.chooseNow,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColor.mainlyGreen,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ), // Back image
                  Positioned(
                    bottom: 70,
                    child: SCCard.avatar(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: SvgPicture.asset(
                        SCAssets.player,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.getVerticalSize(44)),
              SCText.displaySmall(context, text: context.l10n.swipeToSelect),
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
                  Expanded(
                    child: SCOutlineButton(
                      onPressed: () {
                        context.go(AppRoutes.homePage.path);
                      },
                      // Localize the 'Skip' text using context.l10n
                      text: context.l10n.btnSkip,
                      style: context.textTheme.displayMedium?.copyWith(
                        color: AppColor.neonSilver,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SCButton(
                      onPressed: () {
                        context.go(AppRoutes.homePage.path);
                      },
                      text: context.l10n.btnConfirm,
                      style: context.textTheme.displayMedium?.copyWith(
                        fontWeight: AppFontWeight.semiBold,
                      ),
                      backgroundColor: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  final listAvatars = [
    AvatarModel(id: '1', url: SCAssets.placeholder),
    AvatarModel(id: '2', url: SCAssets.placeholder),
    AvatarModel(id: '3', url: SCAssets.placeholder),
    AvatarModel(id: '4', url: SCAssets.placeholder),
    AvatarModel(id: '5', url: SCAssets.placeholder),
    AvatarModel(id: '6', url: SCAssets.placeholder),
    AvatarModel(id: '7', url: SCAssets.placeholder),
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
        width: context.getHorizontalSize(50),
        height: context.getVerticalSize(50),
        child: SvgPicture.asset(avatar?.url ?? ''),
      ),
    );
  }
}

class AvatarModel {
  AvatarModel({required this.url, required this.id});

  final String url;
  final String id;
}
