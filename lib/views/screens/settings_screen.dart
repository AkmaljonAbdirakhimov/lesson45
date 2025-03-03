import 'package:flutter/material.dart';
import 'package:lesson45/notifiers/settings_notifier.dart';
import 'package:lesson45/views/widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          SwitchListTile(
            value: SettingsNotifier.of(context).settings.themeMode ==
                ThemeMode.dark,
            onChanged: SettingsNotifier.of(context).toggleThemeMode,
            title: const Text("Dakr Mode"),
          ),
        ],
      ),
    );
  }
}
