import 'package:flutter/material.dart';
import 'package:untitled3/comon/utility/colors.dart';

class appTheme{
  static ThemeData appthemeData=ThemeData(

    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: AppColors.primaryText,
      )
    )
  );

}