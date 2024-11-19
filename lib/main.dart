import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*title: "test app title",*/
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 173, 187, 146)),
        useMaterial3: true,
      ),*/
      home: Scaffold(
        appBar: AppBar(), // TEMPORARY
        backgroundColor: Colors.green,
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("time"),
                onTap: () async {
                  await showDialog(
                      context: context,
                      builder: (BuildContext testCtx) {
                        return const AlertDialog(
                          title: Text("yeet"),
                          content: Text("yeeghsabdjh\nhelp"),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
