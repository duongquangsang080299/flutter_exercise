import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/widgets/app_bar.dart';
import 'package:soccer_club_app/widgets/card.dart';
import 'package:soccer_club_app/widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(185),
        child: SCAppBar.second(
          backgroundColor: AppColor.primaryColor,
          title: 'asuduasjhd',
          centerTitle: false,
          subtitle: 'ạkhdhjkasd',
          actions: const [
            Icon(Icons.abc),
            SizedBox(width: 10),
            Icon(
              Icons.abc_rounded,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child:
                SCText.displayLarge(context, text: context.l10n.textCondition),
          ),
          const SizedBox(height: 13),
          SizedBox(
            height: 66,
            width: 318,
            child: SCCard.match(
              child: Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/image1.png'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 318,
            height: 66,
            child: Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 21, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.amber),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 13,
                            ),
                            child: Column(
                              children: [
                                Text('123'),
                                Text('123'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Champ'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              SCCard.avatar(
                width: 317,
                height: 199,
                child: Image.asset('assets/images/background.png'),
              ),
              Positioned(
                bottom: 1,
                child: SCCard.avatar(
                  width: 317,
                  height: 71,
                  color: Colors.transparent,
                  child: const SizedBox.shrink(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Stack(
            children: [
              Container(
                width: 318,
                  height: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff29b986),
                      Color(0xff319471),
                      Color(0xff055539),
                      Color(0xff338b6c),
                      Color(0xff25c990),
                      Color(0xff3ec193),
                      Color(0xff1e956c),
                    ],
                  ),
                ),
                // child: SCCard.avatar(
                //   width: 318,
                //   height: 150,
                // ),
              ),
              Positioned(
                bottom: 25,
                right: 100,
                child: SCCard.avatar(
                  width: 317,
                  height: 71,
                  color:Colors.transparent,
                  child: Image.asset('assets/images/stadium.png',width: 145,height: 125,)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
