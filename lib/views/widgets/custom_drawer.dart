import 'package:flutter/material.dart';
import 'package:lesson45/views/screens/home_screen.dart';
import 'package:lesson45/views/screens/settings_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        AppBar(
          title: const Text("MENU"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (ctx) {
              return const HomeScreen();
            }));
          },
          leading: const Icon(Icons.home),
          title: const Text("Home"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (ctx) {
              return SettingsScreen();
            }));
          },
          leading: const Icon(Icons.settings),
          title: const Text("Settings"),
        ),
      ],
    ));
  }
}
