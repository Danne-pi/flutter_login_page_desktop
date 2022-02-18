import 'package:flutter/material.dart';

Color kPrimaryColor = defColorPrimary;
Color kSecundaryColor = defColorSecundary;
Color kTerciaryColor = defColorTerciary;
Color k4Color = defColor4;
String kBackground = defBackTheme;
Icon defIcon = Icon(Icons.brightness_1);
Icon darkIcon = Icon(Icons.brightness_1_outlined);
Icon purIcon = Icon(Icons.brightness_1_outlined);
Icon solIcon = Icon(Icons.brightness_1_outlined);
Icon trIcon = Icon(Icons.brightness_1_outlined);
int themeNumber = 1;
bool themeCaller = true;

Color transp = Color.fromRGBO(0, 0, 0, 0);
Color semiTransp = Color.fromRGBO(0, 0, 0, 0.2);
Color blackTransp = Color.fromRGBO(0, 0, 0, 0.3);
Color whiteTransp = Color.fromRGBO(255, 255, 255, 0.4);
Color bBlackTransp = Color.fromRGBO(0, 0, 0, 0.68);
Color pBlackTransp = Color.fromRGBO(0, 0, 0, 0.85);

class MainTheme extends ChangeNotifier {
  static MainTheme instance = MainTheme();

  tema1() {
    kPrimaryColor = defColorPrimary;
    kSecundaryColor = defColorSecundary;
    kTerciaryColor = defColorTerciary;
    k4Color = defColor4;
    kBackground = defBackTheme;
    themeNumber = 1;
    themeCaller = !themeCaller;
    notifyListeners();
  }

  tema2() {
    kPrimaryColor = darkColorPrimary;
    kSecundaryColor = darkColorSecundary;
    kTerciaryColor = darkColorTerciary;
    k4Color = darkColor4;
    kBackground = darkBackTheme;
    themeNumber = 2;
    themeCaller = !themeCaller;
    notifyListeners();
  }

  tema3() {
    kPrimaryColor = purColorPrimary;
    kSecundaryColor = purColorSecundary;
    kTerciaryColor = purColorTerciary;
    k4Color = purColor4;
    kBackground = purBackTheme;
    themeNumber = 3;
    themeCaller = !themeCaller;
    notifyListeners();
  }

  tema4() {
    kPrimaryColor = solColorPrimary;
    kSecundaryColor = solColorSecundary;
    kTerciaryColor = solColorTerciary;
    k4Color = solColor4;
    kBackground = solBackTheme;
    themeNumber = 4;
    themeCaller = !themeCaller;
    notifyListeners();
  }

  tema5() {
    kPrimaryColor = trColorPrimary;
    kSecundaryColor = trColorSecundary;
    kTerciaryColor = trColorTerciary;
    k4Color = trColor4;
    kBackground = trBackTheme;
    themeNumber = 5;
    themeCaller = !themeCaller;
    notifyListeners();
  }
}

//Theme colors

//Defalt Theme
Color defColorPrimary = Color.fromRGBO(38, 174, 212, 1);
Color defColorSecundary = Color.fromRGBO(59, 95, 129, 1);
Color defColorTerciary = Color.fromRGBO(255, 255, 255, 1);
Color defColor4 = Color.fromRGBO(255, 255, 255, 1);

//   //Darker Theme
Color darkColorPrimary = Color.fromRGBO(255, 255, 255, 1);
Color darkColorSecundary = Color.fromRGBO(1, 2, 4, 1);
Color darkColorTerciary = Color.fromRGBO(255, 255, 255, 1);
Color darkColor4 = Color.fromRGBO(0, 0, 0, 0.63);
//    //purura Theme
Color purColorPrimary = Color.fromRGBO(235, 0, 148, 1);
Color purColorSecundary = Color.fromRGBO(83, 15, 250, 1);
Color purColorTerciary = Color.fromRGBO(235, 0, 148, 1);
Color purColor4 = Color.fromRGBO(11, 2, 33, 0.63);
//    //Neon Theme
Color solColorPrimary = Color.fromRGBO(255, 132, 65, 1);
Color solColorSecundary = Color.fromRGBO(83, 40, 60, 1);
Color solColorTerciary = Color.fromRGBO(255, 132, 65, 1);
Color solColor4 = Color.fromRGBO(53, 44, 63, 0.63);
//    //Crimsom Theme
Color trColorPrimary = Color.fromRGBO(66, 217, 242, 1);
Color trColorSecundary = Color.fromRGBO(66, 217, 242, 1);
Color trColorTerciary = Color.fromRGBO(66, 217, 242, 1);
Color trColor4 = Color.fromRGBO(1, 10, 25, 0.59);

//Theme Backgrounds

String defBackTheme = ('assets/images/Def.jpg');
String darkBackTheme = ('assets/images/Darktheme.jpg');
String purBackTheme = ('assets/images/Purple.png');
String solBackTheme = ('assets/images/Solarized.jfif');
String trBackTheme = ('assets/images/Travel.jpg');

//themes
class MyPager {
  static MyPager instance = MyPager();

  int pageStater = 0;
}

class ThemeShow {
  static ThemeShow instance = ThemeShow();

  bool isShowing = false;
}
