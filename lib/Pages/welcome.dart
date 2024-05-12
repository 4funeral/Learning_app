import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/Widgets/widgets.dart';
import 'package:untitled3/comon/text.dart';

import '../Widgets/notify/welcome_notifier.dart';


//final indexProvider = StateProvider((ref) => 1);

class WelcomePG extends ConsumerWidget{
   WelcomePG({super.key});


  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context,WidgetRef ref) {
  final index = ref.watch(indexDotPrProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(


          body: Container(
            margin: EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,

              children: [
                // showing 3 dots
                PageView(

                  onPageChanged: (value){
                    ref.read(indexDotPrProvider.notifier).changeState(value);

                  },
                  controller: _controller,

                  children: [


                appOnboardingPage(

                  imagePath: 'assets/images/reading.png',
                    title: 'First See Learning',
                    subTitle: 'Forget about of paper all knowledge in one learning', index:1,
                    controller: _controller,
                   context: context,


                ),


                    appOnboardingPage(
                        controller: _controller,
                        context: context,
                        imagePath: 'assets/images/man.png',
                        title: 'Connect With Everyone',
                        subTitle: "Always keep in touch with your tutor and friends,'Let's get connected",index:2),


                    appOnboardingPage(

                        controller: _controller,
                        context: context,
                        imagePath: 'assets/images/boy.png',
                        title: 'Always Facinated Learning',
                        subTitle: "Anywhere, anytime. The time is at your discretion. So study wherever you can",index:3),
                  ],
                ),


              Positioned(
               // left: 20,
               bottom: 50,
                child: DotsIndicator(
                  position: index,
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    size: const Size.square(17.0),
                    activeSize: const Size(24.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    activeColor: Colors.red,
                  ),

                ),
              ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}

