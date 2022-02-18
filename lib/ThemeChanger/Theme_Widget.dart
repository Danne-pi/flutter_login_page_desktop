import 'package:rpg_baser/constants.dart';
import 'package:flutter/material.dart';



class ThemeWidget extends StatefulWidget {


  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    Size sizeBck = size/1.5;
      Size sizeTela = size/3;

    return AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 1000),
        

      child: Center(
        child: Card(
          color: k4Color,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(40)
            )
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(40),
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
                               right:20.0,
                               left: 5),
                             child: RotatedBox(
                              quarterTurns: 1,
                              child: Text(
                              'Temas',
                              style: TextStyle(
                                color:kPrimaryColor,
                                fontSize: 20
                              ),
                              ),
                          ),
                           ),
                          SizedBox(
                            width: 385,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      MainTheme.instance.tema1();
                                    },
                                    child: Stack(
                                      children: [
                                          Icon(Icons.brightness_1,
                                          color: defColorPrimary,
                                          size: 50,),

                                          Icon(Icons.brightness_1_outlined,
                                          color: Color.fromRGBO(165, 243, 141, 1),
                                          size: 50,),
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      MainTheme.instance.tema5();
                                    },
                                    child: Stack(
                                      children: [
                                          Icon(Icons.brightness_1,
                                          color: trColor4,
                                          size: 50,),

                                          Icon(Icons.brightness_1_outlined,
                                          color: trColorPrimary,
                                          size: 50,),
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      MainTheme.instance.tema2();
                                    },
                                    child: Center(
                                      child: Stack(
                                        children: [
                                          Icon(Icons.brightness_1,
                                          color: themeNumber==1? Colors.white: Colors.black,
                                          size: 50,),

                                          Icon(Icons.brightness_1_outlined,
                                          color: themeNumber==1? Colors.black: Colors.white,
                                          size: 50,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      MainTheme.instance.tema3();
                                    },
                                    child: Stack(
                                      children: [
                                        Icon(Icons.brightness_1,
                                        color: purColorPrimary,
                                        size: 50,),

                                        Icon(Icons.brightness_1_outlined,
                                        color: purColorSecundary,
                                        size: 50,),


                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      MainTheme.instance.tema4();
                                    },
                                    child: Stack(
                                      children: [
                                        Icon(Icons.brightness_1,
                                        color: Color.fromRGBO(53, 44, 63, 1),
                                        size: 50,),

                                        Icon(Icons.brightness_1_outlined,
                                        color: solColorPrimary,
                                        size: 50,),
                                      ],
                                    ),
                                  ),
                                ),

                                
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              right:8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios_rounded,
                              color: kPrimaryColor,
                              size: 35,),
                            ),
                          )

                        ],
                      )
                      
                      )
                  ),




                          

              ),
            ),
          ),

        ),
      ),
    );
  }
}