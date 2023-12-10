import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/blocs/home/home_bloc.dart';
import 'package:soccer_club_app/blocs/home/home_event.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/constant/snackbar.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/pages/home/live_match.dart';
import 'package:soccer_club_app/presentations/pages/home/new_match.dart';
import 'package:soccer_club_app/presentations/pages/home/next_match.dart';
import 'package:soccer_club_app/presentations/pages/home/ticket_match.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
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
              SnackbarHelper.showSnackBar(context, context.l10n.loadingfailed);
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
              body: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(29),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SCText.headlineMedium(
                            text: context.l10n.netxMatch,
                            context,
                          ),
                          sizedBox13,
                          const NextMatch(),
                          sizedBox13,
                          SCText.headlineMedium(
                            text: context.l10n.news,
                            context,
                          ),
                          sizedBox13,
                          const MatchNews(),
                          const SizedBox(height: 20),
                          const LiveMatch(),
                          const SizedBox(height: 18),
                          const Ticket(),
                          SizedBox(height: context.getVerticalSize(50)),
                        ],
                      ),
                    ),
                  ),
                ],
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
