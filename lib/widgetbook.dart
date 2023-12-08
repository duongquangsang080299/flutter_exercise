// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/l10n/l10n.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/dots_indicator.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';
import 'package:soccer_club_app/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void main() => runApp(const WidgetbookApp());

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        LocalizationAddon(
          locales: [
            const Locale('en', 'es'),
          ],
          localizationsDelegates: [
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
          ],
        ),
        TimeDilationAddon(),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        TextScaleAddon(
          scales: [1.0, 2.0],
          initialScale: 1,
        ),
        BuilderAddon(
          name: 'Red',
          builder: (context, child) => ColoredBox(
            color: Colors.red,
            child: child,
          ),
        ),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
        ),
      ],
    );
  }
}

@widgetbook.UseCase(
  name: 'Onboarding Screen Button',
  type: Widget,
)
Widget goshtButton(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SCOutlineButton(
              onPressed: () {},
              text: 'SKIP',
              style: context.textTheme.displayMedium
                  ?.copyWith(fontWeight: AppFontWeight.semiBold, fontSize: 16),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: SCButton(
              text: SCText.headlineSmall(
                context,
                text: context.l10n.btnCampaigns,
              ),
              onPressed: () {},
              backgroundColor: AppColor.primary,
              style: context.textTheme.displayMedium?.copyWith(
                fontWeight: AppFontWeight.semiBold,
                fontSize: 16,
                color: AppColor.secondary,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Welcome Screen Button',
  type: SCButton,
)
Center welcomeButton(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SCButton(
            onPressed: () {},
            backgroundColor: AppColor.primary,
            text: Text('Login with email'),
          ),
          const SizedBox(
            height: 40,
          ),
          SCButton(
            onPressed: () {},
            text: Text('Create an account'),
            backgroundColor: AppColor.onTertiary,
            style: context.textTheme.displayMedium?.copyWith(
              fontWeight: AppFontWeight.semiBold,
              fontSize: 16,
              color: AppColor.secondary,
            ),
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'On Boarding',
  type: SCButton,
)
Center onBoarding(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SCButton(
            onPressed: () {},
            backgroundColor: AppColor.primary,
            text: Text('Login with email'),
          ),
          const SizedBox(
            height: 40,
          ),
          SCButton(
            onPressed: () {},
            text: Text('Create an account'),
            backgroundColor: AppColor.onTertiary,
            style: context.textTheme.displayMedium?.copyWith(
              fontWeight: AppFontWeight.semiBold,
              fontSize: 16,
              color: AppColor.secondary,
            ),
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'AppBar Main',
  type: SCAppBar,
)
Center appBar(BuildContext context) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SCAppBar.main(
          toolbarHeight: getVerticalSize(139),
          backgroundColor: AppColor.tertiary,
          title: 'Match Detail',
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(SCIcons.rightArrow),
          ),
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'AppBar Home',
  type: SCAppBar,
)
Center appBarHome(BuildContext context) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SCAppBar.second(
          toolbarHeight: getVerticalSize(139),
          backgroundColor: AppColor.primary,
          centerTitle: false,
          leadingWidth: 30,
          title: 'Good Morning',
          subtitle: '',
          actions: [
            // Define a list of action widgets to be displayed on the app bar.
            IconButton(
              // Create an icon button with an SVG icon.
              icon: SvgPicture.asset(
                SCIcons.notifications,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SCIcon.logOut(
                color: AppColor.secondary,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Card Fixture',
  type: SCCard,
)
Center cardFixture(BuildContext context) {
  return Center(
    child: SCCard.match(
      color: AppColor.whiteSmoke,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              SCAssets.logoMatch,
            ),
            Image.asset(
              SCAssets.logoSecondMatch,
            ),
          ],
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Card Avatar',
  type: SCCard,
)
Center cardAvatar(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: SizedBox(
        child: SCCard.avatar(
          height: 199,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            side: BorderSide(color: AppColor.primary),
          ),
          child: Image.asset(
            SCAssets.soccerStadium,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Dots Indicator',
  type: SCDotsIndicator,
)
Center dotsIndicator(BuildContext context) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: const SCDotsIndicator(
        duration: Duration(microseconds: 500),
        width: 10,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'Bottom Navigation Bar', type: SCBottomNavigationBar)
Center bottomNavigationBar(BuildContext context) {
  return Center(
    child: Container(
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            SCIcons.home,
            height: 20,
          ),
          SvgPicture.asset(
            SCIcons.fixtures,
            height: 20,
          ),
          SvgPicture.asset(
            SCIcons.shop,
            height: 20,
          ),
          SvgPicture.asset(
            SCIcons.tickets,
            height: 20,
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Text',
  type: SCText,
)
Center textWidget(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(29),
      child: Column(
        children: [
          SCText.displayLarge(context, text: 'Soccer App'),
          const SizedBox(
            height: 15,
          ),
          SCText.displayMedium(context, text: 'Soccer App'),
          const SizedBox(
            height: 15,
          ),
          SCText.displaySmall(context, text: 'Soccer App'),
          const SizedBox(
            height: 15,
          ),
          SCText.bodyLarge(context, text: 'Soccer App'),
          const SizedBox(
            height: 15,
          ),
          SCText.bodyMedium(context, text: 'Soccer App'),
          const SizedBox(
            height: 15,
          ),
          SCText.bodySmall(context, text: 'Soccer App'),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Color',
  type: AppColor,
)
Center appColor(BuildContext context) {
  return Center(
    child: Column(
      children: [
        Container(
          width: 30,
          height: 30,
          color: AppColor.primary,
        ),
      ],
    ),
  );
}
