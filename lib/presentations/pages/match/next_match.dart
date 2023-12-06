import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_bloc.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_event.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_state.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/data_time_format.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/shimmer.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class NextMatchPage extends StatefulWidget {
  const NextMatchPage({Key? key}) : super(key: key);

  @override
  State<NextMatchPage> createState() => _NextMatchPage();
}

class _NextMatchPage extends State<NextMatchPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MatchDetailBloc()
        ..add(GetMatchDetailEvent())
        ..add(GetListMatchEvent()),
      child: BlocListener<MatchDetailBloc, MatchDetailState>(
        listener: (context, state) {
          if (state is MatchDetailError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.l10n.loadingfailed),
                duration: const Duration(microseconds: 800),
              ),
            );
          }
        },
        child: SCScaffold(
          body: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: MatchSliverAppBar(expandedHeight: 200),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (index == 0) {
                      return SizedBox(height: context.getVerticalSize(420));
                    } else if (index == 1) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: SCText.headlineMedium(
                          text: context.l10n.matchs,
                          context,
                        ),
                      );
                    } else {
                      return sliverListWidget();
                    }
                  },
                  childCount: 3,
                ),
              ),
            ],
          ),
          bottomNavigationBar: const SCBottomNavigationBar(
              // Set the current selected index.
              ),

          /// Define the location of the floating action button.
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,

          /// Define the floating action button.
          floatingActionButton: FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            backgroundColor: AppColor.secondary,
            child: Image.asset(SCAssets.logoMatch),
          ),
        ),
      ),
    );
  }

  Widget sliverListWidget() {
    return BlocBuilder<MatchDetailBloc, MatchDetailState>(
      builder: (context, state) {
        return state is GetListMatchLoading
            ? const ShimmerCardMatchs()
            : _CardMatchs(listHistory: state.data.listHistory ?? []);
      },
    );
  }
}

class _CardMatchs extends StatelessWidget {
  final List<MatchModel>? listHistory;
  const _CardMatchs({
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

class MatchSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MatchSliverAppBar({required this.expandedHeight});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return BlocBuilder<MatchDetailBloc, MatchDetailState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            SCAppBar.main(
              backgroundColor: AppColor.tertiary,
              leading: IconButton(
                onPressed: () {
                  context.go(AppRoutes.homePage.path);
                },
                icon: SvgPicture.asset(SCIcons.rightArrow),
              ),
              centerTitle: true,
              elevation: 0,
              fontSize: 20,
              title: context.l10n.matchDetails,
            ),
            Positioned(
              top: expandedHeight / 1.5 - shrinkOffset,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: (1 - shrinkOffset / expandedHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: SCCard.match(
                    child: state is GetMatchDetailLoading
                        ? const CircularProgressIndicator()
                        : _CardDetail(match: state.data.match),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class _CardDetail extends StatelessWidget {
  final MatchModel? match;
  const _CardDetail({this.match});

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 127,
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
          ),
        ),
      ),
    );
  }
}
