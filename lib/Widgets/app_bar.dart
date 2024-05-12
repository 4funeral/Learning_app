import 'package:flutter/material.dart';

import '../comon/text.dart';
import '../comon/utility/colors.dart';

AppBar myAppbar({String title = ''}) {
  return AppBar(
    backgroundColor: Colors.white,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0),
      child: Container(
        height: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
    ),
    title: Center(
        child: text16normal(subText: title, color: AppColors.primaryText)),
  );
}