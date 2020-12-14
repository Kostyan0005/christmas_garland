import 'dart:math';
import 'package:flutter/material.dart';
import 'package:christmas_garland/utils/compute_text_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final rnd = Random();

  Color bgColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleScreenTap,
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              color: textColor,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }

  /// When the screen is tapped, change its background color and determine
  /// if text color needs to be changed.
  void handleScreenTap() {
    setState(() {
      bgColor = Color(rnd.nextInt(0xffffffff)).withOpacity(1);
      textColor = computeTextColorFromBg(bgColor);
    });
  }
}
