import 'package:flutter/material.dart';

import 'package:funny_webapp_client/routes/home.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: const Home(),
      theme:
          ThemeData(useMaterial3: true, colorScheme: const ColorScheme.dark()));
}
