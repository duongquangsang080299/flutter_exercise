import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

class ShimmerCardMatchs extends StatelessWidget {
  const ShimmerCardMatchs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.primary,
                        radius: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColor.onError,
                        radius: 20,
                      ),
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
                Container(
                  width: 80,
                  height: 12,
                  color: Colors.grey[300],
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 12,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerCardInfo extends StatelessWidget {
  const ShimmerCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: SCCard.match(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SCText.bodySmall(
                      context,
                      text: context.l10n.may9,
                    ),
                    SCText.bodySmall(
                      context,
                      text: context.l10n.years,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColor.scrim,
                        fontWeight: AppFontWeight.regular,
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                SCText.bodySmall(
                  context,
                  text: context.l10n.championLeague,
                  style: context.textTheme.bodySmall
                      ?.copyWith(color: AppColor.blueBlur),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShimmerCardDetail extends StatelessWidget {
  const ShimmerCardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                SCIcons.arena,
                height: getSize(100),
              ),
            ),
            SCText.bodyLarge(
              context,
              text: context.l10n.devilsArenaStadium,
              style: context.textTheme.bodyLarge?.copyWith(
                color: AppColor.onTertiaryContainer,
                fontWeight: AppFontWeight.medium,
              ),
            ),
            const SizedBox(height: 9),
            SCText.bodySmall(
              context,
              text: context.l10n.devilsArenaStadium,
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
                const Column(
                  children: [],
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
            Padding(
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }
}
