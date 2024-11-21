import 'package:flutter/material.dart';

import 'package:funny_webapp_client/routes/home.dart';
import 'package:funny_webapp_client/routes/settings.dart';
import 'package:funny_webapp_client/settings/runtime_app_settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await runtimeAppSettings.initAndLoadFromPreference();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  void updateTheme() => setState(() {});

  @override
  Widget build(BuildContext context) {
    ColorScheme test = (runtimeAppSettings.isDarkMode)
        ? const ColorScheme.dark()
        : const ColorScheme.light();
    return MaterialApp(
        home: Home(updateTheme),
        theme: ThemeData(useMaterial3: true, colorScheme: test));
  }
}
