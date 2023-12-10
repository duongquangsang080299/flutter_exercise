// ignore_for_file: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';
import 'package:soccer_club_app/presentations/layout/bottom_navigation_bar.dart';
import 'package:soccer_club_app/presentations/widgets/app_bar.dart';
import 'package:soccer_club_app/presentations/widgets/button.dart';
import 'package:soccer_club_app/presentations/widgets/card.dart';
import 'package:soccer_club_app/presentations/widgets/dots_indicator.dart';
import 'package:soccer_club_app/presentations/widgets/icon.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';
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
  name: 'Primary',
  type: SCButtonIcon,
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
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Secondary',
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
  name: 'Tertiary',
  type: SCOutlineButton,
)
Center tertiary(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SCOutlineButton(
            onPressed: () {},
            text: 'SKIP',
            style: context.textTheme.displayMedium?.copyWith(
              fontWeight: AppFontWeight.semiBold,
              fontSize: 16,
              color: AppColor.dimGray,
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
  name: 'Input',
  type: SCInput,
)
Center input(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(29),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SCInput.username(
            labelText: 'Username',
          ),
          SizedBox(
            height: 15,
          ),
          SCInput.email(
            labelText: 'Email',
          ),
          SizedBox(
            height: 15,
          ),
          SCInput.password(
            labelText: 'Password',
          ),
        ],
      ),
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
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            side: BorderSide(color: AppColor.primary),
          ),
          child: CachedNetworkImage(
            imageBuilder: (context, imageProvider) => Container(
              height: 199,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            imageUrl: SCAssets.liveMatch,
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
  type: Typography,
)
Center textWidget(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SCText.displayMedium(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.displaySmall(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.headlineLarge(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.headlineMedium(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.headlineSmall(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.bodyLarge(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.bodySmall(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.labelSmall(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.labelLarge(context, text: 'Welcome to Victory Greens App'),
          const SizedBox(
            height: 15,
          ),
          SCText.labelMedium(context, text: 'Welcome to Victory Greens App'),
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
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.primary,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Primary')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.onPrimary,
              ),
              SizedBox(
                width: 10,
              ),
              Text('On Primary')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.primaryContainer,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Primary Container')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.secondary,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Secondary')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.surface,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Surface')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.tertiary,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Tertiary')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.tertiaryContainer,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Tertiary Container')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.error,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Error')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.blueAzure,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Blue Azure')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.dimGray,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Dim Gray')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.scrim,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Scrim')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                color: AppColor.blueBlur,
              ),
              SizedBox(
                width: 10,
              ),
              Text('blue Blur')
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
  );
}
