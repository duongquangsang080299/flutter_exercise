import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soccer_club_app/blocs/home/home_bloc.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/data_time_format.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class MatchNews extends StatelessWidget {
  const MatchNews();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      // buildWhen: (_, current) => current is GetNewsLoading,
      builder: (context, state) {
        return SizedBox(
          height: 175,
          child: state is GetMatchLoading
              ? const Center(child: CircularProgressIndicator())
              : _News(matchs: state.data.news ?? []),
        );
      },
    );
  }
}

class _News extends StatelessWidget {
  final List<MatchModel>? matchs;
  const _News({this.matchs});

  @override
  Widget build(BuildContext context) {
    return (matchs?.isEmpty ?? false)
        ? const SizedBox.shrink()
        : ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: matchs!.length + 3,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
            itemBuilder: (context, index) {
              if (index == 0) {
                return _MatchItem(match: matchs![1]);
              } else {
                return _VideoHighlight(match: matchs![1]);
              }
            },
          );
  }
}

class _VideoHighlight extends StatelessWidget {
  final MatchModel? match;

  const _VideoHighlight({this.match});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColor.primary),
          ),
          child: CachedNetworkImage(
            imageBuilder: (context, imageProvider) => Container(
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            imageUrl: SCAssets.playerMatch,
          ),
        ),
        Positioned(
          bottom: 4,
          child: SizedBox(
            width: 149,
            height: 42,
            child: SCCard.avatar(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: AppColor.transparent,
              child: const SizedBox.shrink(),
            ),
          ),
        ),
        Positioned(
          top: 132,
          left: 7,
          child: SCText.titleLarge(
            text: context.l10n.greatestGamsvVictoryGreatWinner,
            context,
          ),
        ),
        Positioned(
          top: 100,
          left: 10,
          child: SvgPicture.asset(
            SCIcons.youtube,
          ),
        ),
      ],
    );
  }
}
class _MatchItem extends StatelessWidget {
  final MatchModel? match;
  const _MatchItem({this.match});

  @override
  Widget build(BuildContext context) {
    return SCCard.match(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColor.whiteFlash),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 11, 20, 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Create SCText Display Medium widget for text.
              SCText.headlineSmall(
                text: match?.league ?? context.l10n.superLiga,
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: AppColor.blackHex),
                context,
              ),

              const SizedBox(height: 5),
              // Create SCText Body small widget for the text.
              SCText.labelMedium(
                text: (dateTimeFormatWithDay(match!.datetime)),
                style: context.textTheme.labelMedium?.copyWith(
                  color: AppColor.blueAzure,
                ),
                context,
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(SCAssets.logoMatch),
                  SizedBox(
                    width: getSize(45),
                  ),
                  Image.asset(SCAssets.logoSecondMatch),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 1,
                      horizontal: 8,
                    ),
                    child: SCText.displaySmall(
                      context,
                      text:
                          '${match?.goals?.scoreRed ?? context.l10n.numberfour}',
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  SCText.displaySmall(
                    context,
                    text: context.l10n.dash,
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  SCText.displaySmall(
                    context,
                    text:
                        '${match?.goals?.scoreVictory ?? context.l10n.numberone}',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}