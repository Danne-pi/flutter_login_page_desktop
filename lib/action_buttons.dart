import 'package:flutter/material.dart';
import 'constants.dart';


Widget actionBtn (String text){
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: kSecundaryColor,
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: kSecundaryColor.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 7,
          offset: Offset(0, 3,),
          )
          ]
          ),
    child: Center(
      child: Text(
       text,
       style: TextStyle(
         color: Colors.white,
         fontSize: 20
       ),

      )
    ),
  );
}

Widget loginBton (String text){
  return Container(
    height: 50,
    width: 150,
    decoration: BoxDecoration(
      color: kPrimaryColor,
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 7,
          offset: Offset(0, 3,),
          )
          ]
          ),
    child: Center(
      child: Text(
       text,
       style: TextStyle(
         color:themeNumber ==2? Colors.black: Colors.white,
         fontSize: 20
       ),

      )
    ),
  );
}