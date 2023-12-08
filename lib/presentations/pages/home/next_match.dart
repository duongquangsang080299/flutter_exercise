import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/home/home_bloc.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/data_time_format.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class NextMatch extends StatelessWidget {
  const NextMatch();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      // buildWhen: (_, current) => current is GetMatchLoading,
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                context.go(AppRoutes.nextMatchPage.path);
              },
              child: SizedBox(
                height: context.getVerticalSize(66),
                child: SCCard.match(
                  color: AppColor.whiteSmoke,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.whiteSmoke,
                          offset: Offset(0, 80),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.onError,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 25,
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
                          SCIcon.vertOutlined(
                            color: AppColor.blueAzure,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SCCard.match(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                        SCIcons.calender,
                      ),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: state is GetNewsLoading
                          ? const Center(child: CircularProgressIndicator())
                          : _MatchDetail(match: state.data.nextMatch),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _MatchDetail extends StatelessWidget {
  final MatchModel? match;

  const _MatchDetail({this.match});

  @override
  Widget build(BuildContext context) {
    return (match == null)
        ? const SizedBox.shrink()
        : Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText.bodySmall(
                    context,
                    text: (dateMonthFormat(match!.datetime)),
                  ),
                  const SizedBox(height: 3),
                  SCText.bodySmall(
                    context,
                    text: (yearsFormat(match!.datetime)),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                icon: SvgPicture.asset(
                  SCIcons.cup,
                ),
                onPressed: () {
                  context.go(AppRoutes.fixturesPage.path);
                },
              ),
              SCText.bodySmall(
                context,
                text: match?.league ?? context.l10n.championLeague,
                style: context.textTheme.bodySmall
                    ?.copyWith(color: AppColor.blueBlur),
              ),
              const SizedBox(width: 20),
            ],
          );
  }
}
