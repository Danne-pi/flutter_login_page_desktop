import 'package:rpg_baser/constants.dart';
import 'package:flutter/material.dart';
import 'package:rpg_baser/action_buttons.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
          elevation: 20,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          )),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70)),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              //   height: size.height * (size.height > 770 ? 0.7 : size.height > 670 ? 0.8 : 0.9)/1.6,
              height: 215.5,
              width: 425,
              child: Center(
                child: Container(
                    color: k4Color,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: (size.height > 770
                              ? 15
                              : size.height > 670
                                  ? 8
                                  : 8),
                          horizontal: (size.width > 1280
                              ? 45
                              : size.width > 900
                                  ? 25
                                  : size.width > 700
                                      ? 16
                                      : 16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          TextField(
                            cursorColor: kPrimaryColor,
                            cursorWidth: 3.5,
                            style: TextStyle(color: kPrimaryColor),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kPrimaryColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kPrimaryColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                hintText: "E-mail",
                                hintStyle: TextStyle(color: kPrimaryColor),
                                suffixIcon: Icon(
                                  Icons.mail_outline,
                                  color: kPrimaryColor,
                                )),
                          ),

                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            style: TextStyle(color: kPrimaryColor),
                            obscureText: true,
                            cursorWidth: 3.5,
                            cursorColor: kPrimaryColor,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kPrimaryColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kPrimaryColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                hintText: 'Senha',
                                hintStyle: TextStyle(color: kPrimaryColor),
                                suffixIcon: Icon(
                                  Icons.lock_outline_rounded,
                                  color: kPrimaryColor,
                                )),
                          ),

                          SizedBox(
                            height: 24,
                          ),
                          GestureDetector(
                              onTap: () {
                                print(sizeTela.width / 1.45);
                                print('a');
                              },
                              child: loginBton('entrar')),

                          //                        Column(
                          //                          mainAxisAlignment: MainAxisAlignment.center,
                          //                          crossAxisAlignment: CrossAxisAlignment.center,
                          //                         children: [
                          //                            Text('"Eu tenho uma conta nyantis, e agora?"',
                          //                            style: TextStyle(
                          //                              color: Colors.grey.shade600,
                          //                              fontSize: 16
                          //                            ),),
                          //

                          //                          Row(
                          //                              mainAxisAlignment: MainAxisAlignment.center,
                          //                           children: [
                          //
                          //                            Text('Detalhes',
                          //                          style: TextStyle(
                          //                          color: kPrimaryColor,
                          //                        fontSize: 20
                          //                    ),),
//
                          //                                Icon(Icons.arrow_forward_ios,
                          //                              size: 14,
                          //                                 color: kPrimaryColor,)
//

                          //                                ],),

                          //                          ],
                          //                )
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
