import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/Pages/sign_up/sign_up_controller.dart';
import '../../Widgets/app_TextField.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/button_widget.dart';
import '../../comon/text.dart';
import 'notifier/register_notifier.dart';


class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}
class _SignUpState extends ConsumerState<SignUp> {
  late SignUpController _controller;
  @override
  void initState() {
    _controller = SignUpController(ref: ref);



    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final reg = ref.watch(regNotifierProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: myAppbar(title: 'Sign up'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //social login buttons
                // more login option
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: text14normal(
                        subText: 'Enter your details below & free sign up')),
                SizedBox(
                  height: 50,
                ),
                //Username text box
                appTextField(
                  text: 'Username',
                  iconName: 'assets/icons/user.png',
                  hintText: 'Enter your user name',
                  func: (value) => ref
                      .read(regNotifierProvider.notifier)
                      .onUserNameChance(value),
                ),

                SizedBox(
                  height: 20,
                ),
                //Email
                appTextField(
                    text: 'Email',
                    iconName: 'assets/icons/user.png',
                    hintText: 'Enter your Email Address',
                  func: (value) => ref
                      .read(regNotifierProvider.notifier)
                      .onEmailNChance(value),
                    ),

                //password text box

                SizedBox(
                  height: 20,
                ),
                appTextField(
                    text: 'Password',
                    iconName: 'assets/icons/lock.png',
                    hintText: 'Enter your Password ',
                    obsecureText: true,
                  func: (value) => ref
                      .read(regNotifierProvider.notifier)
                      .onPasswordNameChance(value),

                    ),

                SizedBox(
                  height: 20,
                ),

                //confirm password

                appTextField(
                    text: 'Confirm Password',
                    iconName: 'assets/icons/lock.png',
                    hintText: 'Enter your Confirm Password ',
                    obsecureText: true,
                  func: (value) => ref
                      .read(regNotifierProvider.notifier)
                      .onConfirmPasswordNameChance(value),
                    ),

                SizedBox(
                  height: 20,
                ),
                //forget password
                Container(
                    margin: EdgeInsets.only(left: 25),
                    child: text14normal(
                        subText:
                            'By creating an account you have to agree with our terms & condition')),
                SizedBox(
                  height: 100,
                ),
                // app login button
                Center(
                    child: appButton(
                  buttonName: 'Register',
                      context: context,
                      fung: ()=> _controller.handlesSignup(),
                )),
                // app register button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
