import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:frontend_design/provider/theme_provider.dart';
import 'package:frontend_design/shared/preferences.dart';
import 'package:frontend_design/widgets/instructions/gradient_divider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          SwitchListTile.adaptive(
            title: const Text("Dark Mode"),
            value: Preferences.isDarkmode,
            onChanged: (value) {
              Preferences.isDarkmode = value;
              final themeProvider =
                  Provider.of<ThemeProvider>(context, listen: false);
              value
                  ? themeProvider.setDarkMode()
                  : themeProvider.setLightMode();
              setState(() {});
            },
          ),
          RadioListTile<int>(
              title: const Text("Man"),
              value: 1,
              groupValue: Preferences.gender,
              onChanged: (value) {
                Preferences.gender = value ?? 1;
                setState(() {});
              }),
          RadioListTile<int>(
              title: const Text("Woman"),
              value: 2,
              groupValue: Preferences.gender,
              onChanged: (value) {
                Preferences.gender = value ?? 1;
                setState(() {});
              }),
          const InstructionsGradientDivider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              initialValue: Preferences.name,
              onChanged: (value) {
                Preferences.name = value;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
