import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/widgetbook.directories.g.dart';
import 'package:soccer_club_app/widgets/button.dart';
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    super.key,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: CustomButton,
)
CustomButton enabledButton(BuildContext context) {
  return CustomButton(
    title: 'Enabled',
    onPressed: () {},
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: Widget,
)
Widget disabledButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(29),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SCOutlineButton(
            onPressed: () {},
            text: 'Skip',
            style: context.textTheme.displayMedium?.copyWith(
              fontWeight: AppFontWeight.semiBold,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: SCButton(
            onPressed: () {},
            text: 'Campaigns',
            backgroundColor: AppColor.primary,
          ),
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Login With Email',
  type: SCButton,
)
Padding signinButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(29),
    child: Column(
      children: [
        SCButton(
          onPressed: () {},
          text: 'Login With Email ',
          backgroundColor: AppColor.primary,
        ),
        const SizedBox(
          height: 40,
        ),
        SCButton(
          onPressed: () {},
          text: 'Sign Up ',
          backgroundColor: AppColor.blackHex,
        ),
      ],
    ),
  );
}
