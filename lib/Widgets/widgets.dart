
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled3/Pages/signin/singin.dart';
import 'package:untitled3/Widgets/boxDecoration.dart';
import 'package:untitled3/comon/utility/colors.dart';
import '../comon/text.dart';

 class  appOnboardingPage extends StatelessWidget {
   final PageController controller;
   final String imagePath;
   final String title;
   final String subTitle;
   final index;
   final BuildContext context;

   const appOnboardingPage ({
     Key?key,
     required this.controller,
     required this.imagePath,
     required this.title,
     required this.subTitle,
     required this.index,
     required this.context,
   }):super(key:key);

  @override
  Widget build(BuildContext context) {
  return  Column(
    children: [
      Image.asset(imagePath,fit: BoxFit.fitWidth,),
      Container(
        margin: EdgeInsets.only(top: 15),
        child: text24normal(Title: title,),),
      Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.only(left: 30,right: 30),
        child: text16normal(subText:subTitle),
      ),
      nxtButton(index, controller),

    ],
  );
}
Widget nxtButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: Duration(milliseconds: 300), curve: Curves.linear);
      } else {

        Navigator.pushNamed(
          context,
         "/Signin"
        );




       /* Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) =>  const Signin(),
          ),
        );*/


      }
    },


    child: Container(
      margin: EdgeInsets.only(top: 100, left: 25, right: 25),
      height: 50,
      width: 325,
      decoration: appBoxShadow(),
      child: Center(child: text16normal(subText: index<3? "Next" : 'Get Started', color: Colors.white)),


    ),
  );
}
}