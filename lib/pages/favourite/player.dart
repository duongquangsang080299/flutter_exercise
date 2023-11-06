import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/avatar_model.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/layout/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  PlayerPageState createState() => PlayerPageState();
}

class PlayerPageState extends State<PlayerPage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const sizedBox20 = SizedBox(height: 20);

    return SCScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: context.getVerticalSize(40)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      context.go(AppRoutes.signIn.path);
                    },
                    icon: SvgPicture.asset(SCIcons.back),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.getVerticalSize(44),
            ),
            SCText.displayMedium(
              context,
              text: context.l10n.whoIsYourFavouriteVictoryPlayers,
              style: context.textTheme.displayMedium?.copyWith(
                color: AppColor.primary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.getVerticalSize(41),
            ),
            SCText.bodyLarge(
              context,
              textAlign: TextAlign.center,
              text: context.l10n.description,
            ),
            SizedBox(height: context.getVerticalSize(62)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 106),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  SCCard.avatar(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    width: context.getHorizontalSize(141),
                    height: context.getVerticalSize(152),
                    color: AppColor.onTertiary,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SCText.titleLarge(
                          context,
                          text: context.l10n.favoritePlayer,
                        ),
                        const SizedBox(height: 5),
                        SCText.titleLarge(
                          context,
                          text: context.l10n.chooseNow,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColor.primaryContainer,
                          ),
                        ),
                        sizedBox20,
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    child: SizedBox(
                      height: context.getVerticalSize(123),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: SCCard.avatar(
                          color: Colors.transparent,
                          child: Image.asset(
                            listAvatars[_selectedIndex].url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.getVerticalSize(44)),
            SCText.bodyLarge(context, text: context.l10n.swipeToSelect),
            SizedBox(height: context.getVerticalSize(30)),
            SizedBox(
              height: context.getVerticalSize(38),
              child: PageView.builder(
                controller: PageController(
                  viewportFraction: 1 / 6,
                ),
                itemCount: listAvatars.length,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return AvatarItem(
                    avatar: listAvatars[i],
                    isActive: i == _selectedIndex,
                    onTap: () {
                      setState(() {
                        _selectedIndex = i;
                      });
                    },
                  );
                },
              ),
            ),
            sizedBox20,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SCOutlineButton(
                          onPressed: () {
                            context.go(AppRoutes.homePage.path);
                          },
                          text: context.l10n.btnSkip,
                          style: context.textTheme.headlineSmall?.copyWith(
                            color: AppColor.neonSilver,
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
                          style: context.textTheme.headlineSmall,
                          backgroundColor: AppColor.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sizedBox20,
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class AvatarItem extends StatelessWidget {
  const AvatarItem({
    required this.onTap,
    required this.isActive,
    super.key,
    this.avatar,
  });

  final AvatarModel? avatar;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20, left: 2),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? AppColor.primary : Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(11),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.asset(
                avatar?.url ?? '',
                width: double.infinity,
                height: context.getVerticalSize(45),
              ),
            ),
            if (isActive)
              Positioned(
                left: 20,
                child: SCIcon.backward(
                  width: 7,
                  height: 7,
                  color: AppColor.onTertiary,
                ),
              ),
            if (isActive)
              Positioned(
                right: 20,
                child: SCIcon.forward(
                  width: 7,
                  height: 7,
                  color: AppColor.onTertiary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
