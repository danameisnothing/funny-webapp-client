import 'package:flutter/material.dart';

import 'package:funny_webapp_client/routes/settings.dart';

// FIXME: are you sure this is a StatelessWidget?
class Home extends StatelessWidget {
  final VoidCallback updateGlobalTheme;
  const Home(this.updateGlobalTheme, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerButton(),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Settings"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Settings(updateGlobalTheme)));
              },
            ),
          ],
        ),
      ),
      drawerEnableOpenDragGesture: true,
    );
  }
}
