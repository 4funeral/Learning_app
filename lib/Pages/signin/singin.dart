import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Pages/sign_up/sign_Up.dart';
import 'package:untitled3/Pages/signin/widgets/loginWithSocial.dart';
import 'package:untitled3/Widgets/button_widget.dart';
import 'package:untitled3/comon/text.dart';

import '../../Widgets/app_TextField.dart';
import '../../Widgets/app_bar.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  void regapp(){
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: myAppbar(title: 'Login'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //social login buttons
                loginWithSocial(),
                // more login option
                Center(
                    child: text14normal(
                        subText: 'Or use your email account to login')),
                SizedBox(
                  height: 50,
                ),
                //email text box
                appTextField(
                  text: 'Email',
                  iconName: 'assets/icons/user.png',
                  hintText: 'Enter your Email Address',
                ),

                //password text box

                SizedBox(
                  height: 20,
                ),
                appTextField(
                    text: 'Password',
                    iconName: 'assets/icons/lock.png',
                    hintText: 'Enter your Password ',
                    obsecureText: true),
                SizedBox(
                  height: 20,
                ),
                //forget password
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: textUnderline(text: 'Forgot password'),
                ),
                SizedBox(
                  height: 100,
                ),
                // app login button
                Center(
                  child: appButton(
                    buttonName: 'Login',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // app register button
                Center(
                    child: appButton(
                        buttonName: 'Register',
                        isLogin: false,
                        context: context,
                        fung: ()=>Navigator.pushNamed(context, '/register'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
