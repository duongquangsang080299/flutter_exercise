import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';

class LiveMatch extends StatelessWidget {
  const LiveMatch();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: getSize(199),
          child: SCCard.avatar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              side: BorderSide(color: AppColor.primary),
            ),
            child: CachedNetworkImage(
              imageBuilder: (context, imageProvider) => Container(
                height: 199,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              imageUrl: SCAssets.liveMatch,
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          child: SizedBox(
            width: 350,
            height: 71,
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
          top: 145,
          left: 15,
          child: Container(
            decoration: const BoxDecoration(color: AppColor.primary),
            width: 93,
            height: 5,
          ),
        ),
      ],
    );
  }
}
