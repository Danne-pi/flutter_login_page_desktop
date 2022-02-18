import 'dart:ui';
import 'package:rpg_baser/ThemeChanger/Theme_Widget.dart';
import 'package:rpg_baser/ThemeChanger/ShowLogin.dart';
import 'package:rpg_baser/constants.dart';
import 'package:flutter/material.dart';
import 'package:rpg_baser/strings.dart';
import 'login_Widget.dart';

bool infoView = false;
bool loginView = false;
String sobreEllysium = Strings.instance.sobreEllysiumtxt;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size sizeBck = size / 1.5;
    Size sizeTela = size / 3;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            //Background
            Container(
              height: double.infinity,
              width: size.width,
              color: kPrimaryColor,
              child: Image.asset(
                '$kBackground',
                fit: BoxFit.cover,
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 2,
                      ),
                      child: Icon(Icons.arrow_back_ios_rounded,
                          color: kPrimaryColor, size: 30),
                    ),
                    Text(
                      'Nyantis.com',
                      style: TextStyle(
                          fontSize: 35,
                          color: themeNumber == 2
                              ? kPrimaryColor
                              : kSecundaryColor),
                    )
                  ],
                ),
              ),
            ),

            Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 1),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            '3nity.STUDIOS',
                            style: TextStyle(
                              color: kTerciaryColor,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3, left: 10),
                        child: Text(
                          'Copyright, 2020',
                          style: TextStyle(
                            color: kTerciaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            AnimatedPositioned(
                duration: Duration(milliseconds: 350),
                top: size.height / 3,
                bottom: 0,
                right: (loginView) ? 35 : -535 + 50,
                child: LoginWidget()),

            AnimatedPositioned(
                duration: Duration(milliseconds: 350),
                top: size.height / 3 - (sizeTela.height / 4 + 250) - 190,
                bottom: 0,
                right: (ThemeShow.instance.isShowing) ? -20 : -535 + 50,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ThemeShow.instance.isShowing =
                            !ThemeShow.instance.isShowing;
                      });
                    },
                    child: ThemeWidget())),

            AnimatedPositioned(
                duration: Duration(milliseconds: 350),
                top: size.height / 3 - (sizeTela.height / 4 + 250),
                bottom: 0,
                right: (loginView) ? -20 : -535 + 50,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        loginView = !loginView;
                      });
                    },
                    child: LoginShow())),

            Positioned(
              right: size.width > 700 ? size.width / 3 * 1.2 : size.width / 3,
              left: size.width > 700 ? size.width / 3 * 1.2 : size.width / 3,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    infoView = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: transp),
                    color: (themeNumber == 1
                        ? blackTransp
                        : themeNumber == 2 || themeNumber == 3
                            ? bBlackTransp
                            : themeNumber == 4
                                ? pBlackTransp
                                : transp),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                  width: 250,
                  height: 80,
                  child: Column(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        size: 50,
                        color: kTerciaryColor,
                      ),
                      Text(
                        'Saiba mais',
                        style: TextStyle(
                          color: kTerciaryColor,
                          fontSize: 35,
                          height: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            AnimatedContainer(
              duration: Duration(milliseconds: 550),
              child: AnimatedPositioned(
                duration: Duration(milliseconds: 750),
                curve: Curves.easeInOut,
                bottom: (infoView) ? -10 : -size.height - 90,
                left: size.width > 700 ? 70 : 20,
                right: size.width > 700 ? 70 : 20,
                child: Card(
                  color: k4Color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(70),
                          topLeft: Radius.circular(70))),
                  elevation: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Container(
                      width: size.width - 70,
                      height: size.height - 90,
                      color: k4Color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 35.0, right: 45),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      infoView = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: kPrimaryColor,
                                  ),
                                  iconSize: 45,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
