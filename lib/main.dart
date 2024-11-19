import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          backgroundColor: const Color.fromARGB(255, 23, 175, 170),
          child: ListView(
            children: const [
              ListTile(
                title: Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
