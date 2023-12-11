import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_bloc.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_event.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_state.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/constant/snackbar.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';
import 'package:soccer_club_app/presentations/pages/match/detail_match.dart';
import 'package:soccer_club_app/presentations/pages/match/list_match.dart';
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
            SnackbarHelper.showSnackBar(context, context.l10n.loadingfailed);
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
                      return SizedBox(height: context.getVerticalSize(480));
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
      // buildWhen: (_, current) => current is GetListMatchEvent,
      builder: (context, state) {
        return state is GetListMatchLoading
            ? const ShimmerCardMatchs()
            : ListMatchs(listHistory: state.data.listHistory ?? []);
      },
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
      // buildWhen: (_, current) => current is GetMatchDetailEvent,
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
                        : DetailMatch(match: state.data.match),
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
