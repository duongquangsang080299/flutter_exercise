import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
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
        toolbarHeight: 139,
        backgroundColor: AppColor.primary,
        centerTitle: false,
        title: 'Good Morning',
        subtitle: 'Adrian',
        actions: const [
          Icon(Icons.abc),
          SizedBox(width: 10),
          Icon(Icons.abc_rounded),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.bodyMedium(
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
                    // border: Border.all(color: AppColor.whiteSmoke),
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
                            onPressed: () {},
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                vertical: 11,
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
                  SCText.bodyMedium(
                    text: context.l10n.netxMatch,
                    context,
                  ),
                ],
              ),
              const SizedBox(height: 13),
              SizedBox(
                height: 170,
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
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 317,
                    height: 199,
                    child: SCCard.avatar(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        side: BorderSide(color: AppColor.primary),
                      ),
                      child: SvgPicture.asset(
                        SCAssets.stadiumtranfor,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    child: SCCard.avatar(
                      width: context.getHorizontalSize(317),
                      height: context.getVerticalSize(71),
                      color: Colors.transparent,
                      child: const SizedBox.shrink(),
                    ),
                  ),
                  Positioned(
                    top: 141,
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
                          text: context.l10n.chooseNow,
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            backgroundColor: AppColor.primary,
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Page 3',
          ),
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

  final listAvatars = [
    AvatarModel(id: '1', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '2', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '3', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '4', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '5', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '6', url: 'assets/images/stadium.svg'),
    AvatarModel(id: '7', url: 'assets/images/stadium.svg'),
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
            color: AppColor.primary,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        width: 150,
        height: 170,
        child: SvgPicture.asset(
          avatar?.url ?? '',
          width: 150,
          height: 170,
        ),
      ),
    );
  }
}

class AvatarModel {
  AvatarModel({
    required this.url,
    required this.id,
  });

  final String url;
  final String id;
}
