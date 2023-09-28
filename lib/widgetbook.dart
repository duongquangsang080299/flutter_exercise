import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
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
  return Column(
    children: [
      SCButton(
        onPressed: () {},
        text: 'Sign in',
        backgroundColor: AppColor.primary,
      ),
      const SizedBox(height: 20),
      SCButton(
        onPressed: () {},
        text: 'Sign up',
        backgroundColor: AppColor.blueAlice,
      ),
    ],
  );
}

@widgetbook.UseCase(
  name: 'signinButton',
  type: SCButton,
)
SCButton signinButton(BuildContext context) {
  return SCButton(
    onPressed: () {},
    text: 'Sign in -- ',
    backgroundColor: AppColor.blackHex,
  );
}
