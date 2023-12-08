import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/data_time_format.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/shimmer.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class DetailMatch extends StatelessWidget {
  final MatchModel? match;
  const DetailMatch({this.match});

  @override
  Widget build(BuildContext context) {
    return (match == null)
        ? const ShimmerCardDetail()
        : Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  SCIcons.arena,
                  height: getSize(100),
                ),
              ),
              SCText.bodyLarge(
                context,
                text: match?.place ?? context.l10n.devilsArenaStadium,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColor.onTertiaryContainer,
                  fontWeight: AppFontWeight.medium,
                ),
              ),
              const SizedBox(height: 9),
              SCText.bodySmall(
                context,
                text: (dateTimeFormat(match!.datetime)),
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: AppFontWeight.medium,
                  color: AppColor.onTertiaryContainer,
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    SCAssets.logoRed,
                    height: getSize(67),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      SCText.bodySmall(
                        context,
                        text: match?.start ?? context.l10n.kickoff,
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: AppFontWeight.medium,
                          color: AppColor.blueMainly,
                        ),
                      ),
                      SCText.displayLarge(
                        context,
                        text: (formattedTime(match!.datetime)),
                        style: context.textTheme.displayLarge?.copyWith(
                          color: AppColor.blueMainly,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Image.asset(
                    SCAssets.logoVictory,
                    height: getSize(67),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SCText.headlineSmall(
                    context,
                    text: context.l10n.redD,
                    style: context.textTheme.headlineSmall
                        ?.copyWith(color: AppColor.tertiary),
                  ),
                  const SizedBox(
                    width: 143,
                  ),
                  SCText.headlineSmall(
                    context,
                    text: context.l10n.victoryG,
                    style: context.textTheme.headlineSmall
                        ?.copyWith(color: AppColor.tertiary),
                  ),
                ],
              ),
              SizedBox(height: context.getVerticalSize(28)),
              _MatchCountDown(matchDateTime: match!.datetime),
              const SizedBox(height: 20),
            ],
          );
  }
}

class _MatchCountDown extends StatelessWidget {
  final DateTime matchDateTime;

  const _MatchCountDown({required this.matchDateTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        height: 150,
        child: SCCard.avatar(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              gradient: LinearGradient(
                begin: Alignment(1, -4),
                end: Alignment(-1, 2),
                colors: AppColor.linearGradient,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SCText.headlineSmall(
                  context,
                  text: context.l10n.matchcountdown,
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TimerCountdown(
                      format: CountDownTimerFormat.daysHoursMinutesSeconds,
                      endTime: matchDateTime,
                      timeTextStyle: const TextStyle(
                        fontSize: 28,
                        color: AppColor.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                      colonsTextStyle: const TextStyle(
                        fontSize: 28,
                        color: AppColor.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                      descriptionTextStyle: const TextStyle(
                        fontSize: 14,
                        color: AppColor.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                      onEnd: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
