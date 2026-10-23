import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  final List<Widget> pages = [
    const Center(child: Text("Home")),
    const Center(child: Text("Encrypt")),
    const Center(child: Text("Decrypt")),
    const Center(child: Text("Settings")),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentGeometry.topLeft,
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 10,
                  top: 0,
                ),
                child: Text(
                  "Last files",
                  style: TextStyle(
                    fontFamily: "GoogleSans",
                    fontSize: 36,
                    fontWeight: FontWeight.w500
                  ),
                  ),
              ),
            )
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
