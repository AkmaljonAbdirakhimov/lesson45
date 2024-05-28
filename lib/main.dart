import 'package:flutter/material.dart';
import 'package:lesson45/controllers/settings_controller.dart';
import 'package:lesson45/notifiers/settings_notifier.dart';
import 'package:lesson45/views/screens/home_screen.dart';
import 'package:lesson45/views/widgets/custom_drawer.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsNotifier(
      settingsController: SettingsController(),
      child: Builder(builder: (context) {
        return ListenableBuilder(
          listenable: SettingsNotifier.of(context),
          builder: (ctx, child) {
            return MaterialApp(
              theme: ThemeData(
                primaryColor: Colors.blue,
              ),
              darkTheme: ThemeData.dark(),
              themeMode: SettingsNotifier.of(context).settings.themeMode,
              home: const HomeScreen(),
            );
          },
        );
      }),
    );
  }
}
