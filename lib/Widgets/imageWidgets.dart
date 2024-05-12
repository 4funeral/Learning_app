import 'package:flutter/cupertino.dart';

Widget appImage({
  String assetPath = 'assets/icons/user.png',
  double width = 16,
  double hieght = 16,
}) {
  return Image.asset(
    assetPath.isEmpty ? 'assets/icons/user.png' : assetPath,
    width: width,
    height: hieght,
  );
}
