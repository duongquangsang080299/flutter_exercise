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
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  List<AvatarModel> listAvatars = [
    AvatarModel(id: '1', url: 'assets/images/playerone.svg'),
    AvatarModel(id: '2', url: 'assets/images/playerone.svg'),
    AvatarModel(id: '3', url: 'assets/images/playerone.svg'),
    AvatarModel(id: '1', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '2', url: 'assets/images/avatar.svg'),
    AvatarModel(id: '3', url: 'assets/images/clubLogo.svg'),
    // Add more AvatarModel items with actual image paths...
  ];

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
                    width: 141,
                    height: 152,
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
                  ),
                  Positioned(
                    bottom: 70,
                    child: SCCard.avatar(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: SvgPicture.asset(
                        listAvatars[_selectedIndex].url,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.getVerticalSize(44)),
              SCText.displaySmall(context, text: context.l10n.swipeToSelect),
              const SizedBox(height: 27),
              SizedBox(
                height: 50,
                child: PageView.builder(
                  controller: PageController(
                    initialPage: 2,
                    viewportFraction: 1 / 5,
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
              const SizedBox(height: 57),
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
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? AppColor.primary : Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        width: 150, // Adjust the width as needed
        height: 170, // Adjust the height as needed
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset(avatar?.url ?? ''),
            if (isActive)
              Positioned(
                left: 50,
                top: 0,
                child: SCIcon.forward(
                  color: Colors.amber,
                ),
              ),
            if (isActive)
              Positioned(
                right: 50,
                top: 0,
                child: SCIcon.back(
                  color: Colors.amber,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AvatarModel {
  AvatarModel({required this.url, required this.id});

  final String url;
  final String id;
}
