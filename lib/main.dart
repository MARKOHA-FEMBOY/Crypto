
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                    bottom: 40,
                  ),
                  child: Icon(Icons.lock),
                  ),
              ),
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 10,
                    bottom: 10,
                  ),
                  child: Text("Test"), 
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.arrow_forward),
          ),
      ),
    );
  }
}
