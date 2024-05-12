import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../comon/text.dart';
import 'boxDecoration.dart';
import 'imageWidgets.dart';

Widget appTextField(
    {String text = 'Email',
      String iconName = '',
      String hintText = "Type in your info",
      bool obsecureText = false,
      void Function (String value)? func

    }) {
  return Container(
    padding: EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14normal(subText: text),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 350,
          height: 50,
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17),
                child: appImage(
                  assetPath: iconName,
                ),
              ),
              // our text field
              Container(
                width: 280,
                height: 50,
                child: TextField(
                  onChanged: (value)=>func!(value),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    //default border without input
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    // focused boder
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),

                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obsecureText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
