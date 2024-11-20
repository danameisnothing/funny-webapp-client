import 'package:flutter/material.dart';

import 'package:funny_webapp_client/settings/runtime_app_settings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  // TODO: ADD A RESET BUTTON
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SwitchListTile(
            title: const Text("yeet"),
            value: runtimeAppSettings.isDarkMode,
            onChanged: (value) async {
              // FIXME: IS THIS SAFE?
              setState(() => runtimeAppSettings.isDarkMode =
                  !runtimeAppSettings.isDarkMode);
              await runtimeAppSettings.savePreferences();
            },
          ),
        ],
      ),
    );
  }
}
