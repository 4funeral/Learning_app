import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/comon/utility/colors.dart';

BoxDecoration appBoxShadow({
  Color colors = AppColors.primaryElement,
  double radious = 15.0,
  double sR = 1.0,
  double bR = 2,
  BoxBorder? border,
}) {
  return BoxDecoration(
      color: colors,
      borderRadius: BorderRadius.circular(15),
      border: border,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          blurRadius: bR,
          spreadRadius: sR,
          offset: const Offset(0, 5),
        ),
      ]);
}

BoxDecoration appBoxDecorationTextField({
  Color color = AppColors.primaryBackground,
  double radious = 15.0,
  Color colors = AppColors.primaryFourElementText,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15.0),
      border: Border.all(color: colors));
}
