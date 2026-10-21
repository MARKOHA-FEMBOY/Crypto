import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
        child: Stack(
          children: [

            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.folder_zip), label: "Encrypt"),
            NavigationDestination(icon: Icon(Icons.topic), label: "Decrypt"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
      )
    );
  }
}
