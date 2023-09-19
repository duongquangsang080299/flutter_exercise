import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/avatar_model.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';
import 'package:soccer_club_app/widgets/button.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/scaffold.dart';
import 'package:soccer_club_app/widgets/text.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SCScaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: AppColor.secondary,
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
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            SCText.displayLarge(
              context,
              text: context.l10n.whoIsYourFavouriteVictoryPlayers,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.getVerticalSize(41),
            ),
            SCText.displaySmall(
              context,
              textAlign: TextAlign.center,
              text: context.l10n.description,
            ),
            SizedBox(height: context.getVerticalSize(62)),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SCCard.avatar(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  width: 141,
                  height: 152,
                  color: AppColor.blackJet,
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
                ),
                Positioned(
                  bottom: 70,
                  child: SizedBox(
                    width: 121,
                    height: 123,
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
            SizedBox(height: context.getVerticalSize(44)),
            SCText.displaySmall(context, text: context.l10n.swipeToSelect),
            const SizedBox(height: 27),
            SizedBox(
              height: 40,
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
            SizedBox(height: context.getVerticalSize(57)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SCOutlineButton(
                    onPressed: () {
                      context.go(AppRoutes.homePage.path);
                    },
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
            Radius.circular(12),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 45,
              height: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  avatar?.url ?? '',
                ),
              ),
            ),
            if (isActive)
              Positioned(
                left: 25,
                child: SCIcon.backward(
                  width: 7,
                  height: 7,
                  color: AppColor.blackJet,
                ),
              ),
            if (isActive)
              Positioned(
                right: 25,
                child: SCIcon.forward(
                  width: 7,
                  height: 7,
                  color: AppColor.blackJet,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
