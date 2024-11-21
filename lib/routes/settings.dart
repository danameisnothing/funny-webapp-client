import 'package:flutter/material.dart';

import 'package:funny_webapp_client/settings/runtime_app_settings.dart';

class Settings extends StatefulWidget {
  final VoidCallback updateGlobalTheme;
  const Settings(this.updateGlobalTheme, {super.key});

  @override
  State<Settings> createState() => _Settings();

  void commitUpdate() async {
    await runtimeAppSettings.savePreferences();
    updateGlobalTheme();
  }
}

class _Settings extends State<Settings> {
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
            title: const Text("Dark Mode"),
            value: runtimeAppSettings.isDarkMode,
            onChanged: (value) async {
              setState(() => runtimeAppSettings.isDarkMode =
                  !runtimeAppSettings.isDarkMode);
              widget.commitUpdate();
            },
          ),
          Divider(
            height: 1.0,
          ),
          ListTile(
            title: const Text("Reset preferences"),
            onTap: () async {
              showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return AlertDialog(
                      title: const Text("Reset preferences"),
                      content: const Text("r u sure?"),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(ctx),
                            child: const Text("Cancel")),
                        TextButton(
                            onPressed: () async {
                              Navigator.pop(ctx);
                              await runtimeAppSettings.reset();
                              widget.commitUpdate();
                            },
                            child: const Text("Reset"))
                      ],
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
