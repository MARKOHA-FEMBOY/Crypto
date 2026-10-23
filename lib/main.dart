import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

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
                    left: 7,
                    bottom: 110,
                  ),
                  child: Icon(
                    Icons.lock,
                    size: 52,
                    ),
                  ),
              ),
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 10,
                    bottom: 50,
                  ),
                  child: Text(
                    "Crypto", 
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'GoogleSans',
                      fontWeight: FontWeight.w500
                    ),
                    ), 
                ),
              ),
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 13,
                    bottom: 10,
                  ),
                  child: Text(
                    "File encryption",
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: 36,
                      fontWeight: FontWeight.w500
                    ),
                    ), 
                )
              ),
              Align(
                alignment: AlignmentGeometry.center,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 0,
                    bottom: 0,
                  ),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    right: 20,
                    top: 0
                  ),
                  child: Text(
                    "Developed by",
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    right: 20,
                    top: 20
                  ),
                  child: Text(
                    'MARKOHA',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ), 
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            runApp(
              MaterialApp(
                home: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: HomeScreen()
                  ),
              )
            );
          },
          child: Icon(Icons.arrow_forward),
          ),
      ),
    );
  }
}
