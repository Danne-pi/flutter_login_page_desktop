import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_baser/LoginRegister/login_Page.dart';
import 'package:rpg_baser/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: MainTheme.instance,
      builder: (context, child) {
        return AnimatedSwitcher(
            duration: Duration(milliseconds: 650),
            child: (themeCaller ? StaterPg1() : StaterPg2()));
      },
    );
  }
}

class StaterPg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.staatlichesTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Container(child: LoginScreen())),
    );
  }
}

class StaterPg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.staatlichesTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Container(child: LoginScreen())),
    );
  }
}
