

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled3/Pages/sign_up/sign_Up.dart';
import 'package:untitled3/Widgets/boxDecoration.dart';
import 'package:untitled3/comon/text.dart';
import 'package:untitled3/comon/utility/colors.dart';

Widget appButton({
  double width = 325,
  double hieght = 50,
  String buttonName = '',
  bool isLogin = true,
  BuildContext? context,
  void Function()? fung,
}) {
  return GestureDetector(
   onTap:fung,
    child: Container(
      width: width,
      height: hieght,
      // is login send white color
      decoration: appBoxShadow(
          colors: isLogin ? AppColors.primaryElement : Colors.white,
          border: Border.all(color: AppColors.primaryFourElementText)),
      child: Center(
          child: text16normal(
              subText: buttonName,
              color: isLogin
                  ? AppColors.primaryBackground
                  : AppColors.primaryText)),
    ),
  );
}
