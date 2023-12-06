import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/home/home_bloc.dart';
import 'package:soccer_club_app/blocs/home/home_event.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/data_time_format.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final authRepo = AuthRepo();

  @override
  Widget build(BuildContext context) {
    const sizedBox13 = SizedBox(height: 13);
    return RepositoryProvider.value(
      value: authRepo,
      child: BlocProvider(
        create: (context) => HomeBloc(authRepo: authRepo)
          ..add(GetNewsEvent())
          ..add(GetMatchEvent())
          ..add(GetUserEvent())
          ..add(GetTicketEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(context.l10n.loadingfailed),
                  duration: const Duration(microseconds: 800),
                ),
              );
            }

            return Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(159),
                child: SCAppBar.second(
                  toolbarHeight: getVerticalSize(139),
                  centerTitle: false,
                  leadingWidth: 30,
                  title: context.l10n.goodMorning,
                  subtitle: context
                          .read<HomeBloc>()
                          .state
                          .data
                          .userName
                          ?.displayName ??
                      context.l10n.adrian,
                  actions: [
                    IconButton(
                      icon: SvgPicture.asset(
                        SCIcons.notifications,
                      ),
                      onPressed: () {
                        context.go(AppRoutes.notificationsPage.path);
                      },
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SCIcon.logOut(
                        color: AppColor.secondary,
                        onPressed: () async {
                          await authRepo.signOut();
                          // ignore: use_build_context_synchronously
                          context.go(AppRoutes.onBoarding.path);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(29),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SCText.headlineMedium(
                      text: context.l10n.netxMatch,
                      context,
                    ),
                    sizedBox13,
                    const _CardInfo(),
                    sizedBox13,
                    SCText.headlineMedium(
                      text: context.l10n.news,
                      context,
                    ),
                    sizedBox13,
                    const _MatchNews(),
                    const SizedBox(height: 20),
                    const _LiveMatch(),
                    const SizedBox(height: 18),
                    const _Ticket(),
                    SizedBox(height: context.getVerticalSize(50)),
                  ],
                ),
              ),
              bottomNavigationBar: const SCBottomNavigationBar(),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(
                elevation: 0,
                onPressed: () {},
                backgroundColor: AppColor.secondary,
                child: Image.asset(SCAssets.logoMatch),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
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
                    // Create a Row of widgets for the left side of the card.
                    IconButton(
                      icon: SvgPicture.asset(
                        SCIcons.calender,
                      ),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: state is GetNewsLoading
                          ? const Center(child: CircularProgressIndicator())
                          : _NextMatch(match: state.data.nextMatch),
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

class _NextMatch extends StatelessWidget {
  final MatchModel? match;

  const _NextMatch({this.match});

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
                  const SizedBox(
                    height: 3,
                  ),
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
              const SizedBox(
                width: 20,
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
                  // Image.asset(match?.goals?.logo ?? SCAssets.logoSecondMatch),
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

class _MatchNews extends StatelessWidget {
  const _MatchNews();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
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
          child: SCCard.avatar(
            // child:ReelModel()
            child: CachedNetworkImage(
              imageUrl: SCAssets.playerMatch,
              fit: BoxFit.fill,
            ),
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

class _LiveMatch extends StatelessWidget {
  const _LiveMatch();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: getSize(199),
          child: SCCard.avatar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              side: BorderSide(color: AppColor.primary),
            ),
            child: CachedNetworkImage(
              imageUrl: SCAssets.soccerStadium,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          child: SizedBox(
            width: 317,
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

class _Ticket extends StatelessWidget {
  const _Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            SCCard.avatar(
              height: 150,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  gradient: LinearGradient(
                    begin: Alignment(1, -4),
                    end: Alignment(-1, 2),
                    colors: AppColor.linearGradient,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 230,
              child: CachedNetworkImage(
                imageUrl: SCAssets.stadium,
                width: getSize(145),
                height: getSize(125),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 170,
              child: Container(
                width: 149,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColor.secondary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: state is GetTicketLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _TicketSaleOff(ticket: state.data.ticket),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _TicketSaleOff extends StatelessWidget {
  final TicketModel? ticket;
  const _TicketSaleOff({this.ticket});

  @override
  Widget build(BuildContext context) {
    return (ticket == null)
        ? const SizedBox.shrink()
        : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SCText.bodyLarge(
                  context,
                  text:
                      '${context.l10n.get} ${ticket?.sale.toString()}${context.l10n.off}',
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: AppColor.secondary),
                ),
              ],
            ),
          );
  }
}
