import 'package:flutter/cupertino.dart';

Widget loginWithSocial() {
  return Container(
    margin: EdgeInsets.only(top: 40, left: 80, right: 80, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _SocialLoginButton(imagepath: 'assets/icons/google.png'),
        _SocialLoginButton(imagepath: 'assets/icons/apple.png'),
        _SocialLoginButton(imagepath: 'assets/icons/facebook.png'),
      ],
    ),
  );
}

Widget _SocialLoginButton({String imagepath = 'assets/icons/google.png'}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      child: Container(
        width: 40,
        height: 40,
        child: Image.asset(imagepath),
      ),
    ),
  );
}