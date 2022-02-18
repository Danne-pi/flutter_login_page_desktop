import 'package:rpg_baser/constants.dart';
import 'package:flutter/material.dart';

class LoginShow extends StatefulWidget {
  @override
  _LoginShowState createState() => _LoginShowState();
}

class _LoginShowState extends State<LoginShow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size sizeBck = size / 1.5;
    Size sizeTela = size / 3;

    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 1000),
      child: Center(
        child: Card(
          color: k4Color,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topLeft: Radius.circular(15))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topLeft: Radius.circular(15),
            ),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              //   height: size.height * (size.height > 770 ? 0.7 : size.height > 670 ? 0.8 : 0.9)/1.6,
              height: 90,
              width: 535,
              color: k4Color,
              child: Center(
                child: Container(
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 0, right: 20.0, left: 5),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 20),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Nyantis ',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: themeNumber == 2
                                              ? kPrimaryColor
                                              : themeNumber == 3
                                                  ? kSecundaryColor
                                                  : themeNumber == 4
                                                      ? kPrimaryColor
                                                      : Colors.grey[700]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: Text(
                                                'infinity',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: themeNumber == 4
                                                      ? Color.fromRGBO(
                                                          227, 41, 36, 1)
                                                      : kPrimaryColor,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: Icon(
                                                  Icons.all_inclusive_rounded,
                                                  size: 40,
                                                  color: themeNumber == 4
                                                      ? Color.fromRGBO(
                                                          227, 41, 36, 1)
                                                      : kPrimaryColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Account',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: themeNumber == 2
                                              ? kPrimaryColor
                                              : themeNumber == 3
                                                  ? kSecundaryColor
                                                  : themeNumber == 4
                                                      ? kPrimaryColor
                                                      : Colors.grey[700]),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: kPrimaryColor,
                                  size: 35,
                                ),
                              ),
                            )
                          ],
                        ))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
