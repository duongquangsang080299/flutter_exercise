import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/data_time_format.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class ListMatchs extends StatelessWidget {
  final List<MatchModel>? listHistory;
  const ListMatchs({
    this.listHistory,
  });

  @override
  Widget build(BuildContext context) {
    return (listHistory?.isEmpty ?? false)
        ? const SizedBox.shrink()
        : ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listHistory?.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return _History(match: listHistory![index]);
            },
          );
  }
}

class _History extends StatelessWidget {
  const _History({required this.match});
  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          SizedBox(
            height: context.getVerticalSize(50),
            child: SCCard.match(
              color: AppColor.whiteSmoke,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.whiteSmoke,
                      offset: Offset(0, 9),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.primary,
                      child: Center(
                        child: SCText.headlineLarge(
                          context,
                          text: match.goals?.scoreRed.toString() ??
                              context.l10n.numbertwo,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.onError,
                      child: Center(
                          child: SCText.headlineLarge(
                        context,
                        text: match.goals?.scoreVictory.toString() ??
                            context.l10n.numberone,
                      )),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  SCIcons.calender,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              SCText.bodySmall(
                context,
                text: (dateTimeFormat(match.datetime)),
              ),
              const SizedBox(width: 10),
              SCText.bodySmall(
                context,
                text: (formattedTime(match.datetime)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
