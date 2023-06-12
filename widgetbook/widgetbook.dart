import 'package:flutter/material.dart';
import 'package:my_test_app/main.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        LocalizationAddon(
          locales: [
            const Locale('cs'),
            const Locale('en'),
          ],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone12,
            Devices.ios.iPhone13,
            Devices.ios.iPad,
          ],
        ),
        TextScaleAddon(scales: [1, 1.5, 2]),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              data: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              name: 'LightTheme',
            ),
          ],
        ),
      ],
      directories: [
        WidgetbookCategory(
          name: 'Pages',
          children: [
            WidgetbookComponent(
              name: 'On startup',
              useCases: [
                WidgetbookUseCase(
                  name: 'Test Page',
                  builder: (context) => const MyHomePage(title: "Test123"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
