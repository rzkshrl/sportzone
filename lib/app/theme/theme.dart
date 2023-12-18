// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:sportzone/app/theme/theme_const.dart';

Color light = HexColor('#FFFFFF');
Color dark = HexColor('#121212');

Color black = HexColor('#000000');

List<Color> gradientBlue1 = [
  HexColor('#3792C4'),
  HexColor('#3E5CFC').withOpacity(0.45)
];

Color gradientBlue_1 = HexColor('#3792C4');
Color gradientBlue_2 = HexColor('#3E5CFC').withOpacity(0.45);

Color blue1_85A4F2 = HexColor('#85A4F2');
Color blue2_7484AE = HexColor('#7484AE');
Color blue3_1A4DCE = HexColor('#1A4DCE');
Color blue4_809BAA = HexColor('#809BAA');
Color blue5_4D94D4 = HexColor('#4D94D4');
Color blue6_135896 = HexColor('#135896');
Color blue7_074985 = HexColor('#074985');
Color blue8_4D63D4 = HexColor('#4D63D4');
Color blue9_4DBCD4 = HexColor('#4DBCD4');
Color blue10_3250ED = HexColor('#3250ED');
Color blue11_12848B = HexColor('#12848B');
Color blue12_CBE4FC = HexColor('#CBE4FC');

Color blueBtn1 = HexColor('#3E6CE1');
Color blueFB = HexColor('#1877F2');

Color grey1 = HexColor('#E9E8E8');
Color green = HexColor('#3DD598');
Color green2 = HexColor('#0C566F');
Color red = HexColor('##FC5A5A');

class SportZoneAppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: light,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: light,
      iconTheme: IconThemeData(color: dark),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: light,
      ),
    ),
    brightness: Brightness.light,
    popupMenuTheme: PopupMenuThemeData(
      color: light,
      surfaceTintColor: Colors.transparent,
      textStyle:
          TextStyle(color: dark, fontSize: 10.sp, fontWeight: FontWeight.w400),
    ),
    iconTheme: IconThemeData(
      color: dark,
    ),
    cardColor: light,
    colorScheme:
        ColorScheme.light(primary: gradientBlue_1, secondary: gradientBlue_2),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontFamily: helveticaMedium, color: light),
      headlineMedium:
          TextStyle(fontFamily: helveticaMediumNormal, color: light),
      titleLarge: TextStyle(fontFamily: helveticaMedium, color: black),
      titleSmall: TextStyle(fontFamily: helveticaLight, color: blue4_809BAA),
      headlineSmall: TextStyle(fontFamily: helveticaRoman, color: black),
      displaySmall: TextStyle(fontFamily: helveticaThin, color: black),
    ),
  );
}
