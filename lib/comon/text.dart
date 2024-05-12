import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/comon/utility/colors.dart';

Widget text24normal({String Title = '', Color color = AppColors.primaryText}) {
  return Text(
    Title,
    style: TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16normal(
    {String subText = '', var color = AppColors.primarySecondaryElementText}) {
  return Text(
    textAlign: TextAlign.center,
    subText,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14normal(
    {String subText = '', var color = AppColors.primaryThreeElementText}) {
  return Text(
    textAlign: TextAlign.start,
    subText,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget textUnderline({String text = 'Your text'}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}
