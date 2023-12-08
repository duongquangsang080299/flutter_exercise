import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';

import 'package:soccer_club_app/blocs/home/home_bloc.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      // buildWhen: (_, current) => current is GetTicketLoading,
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
              child: Image.asset(
                SCAssets.stadium,
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
