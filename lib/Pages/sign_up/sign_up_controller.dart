import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/Pages/sign_up/notifier/register_notifier.dart';

class SignUpController{
 final WidgetRef ref;

   SignUpController({required this.ref});

   void handlesSignup(){
     var state = ref.read(regNotifierProvider);
     String name = state.username;
     String email = state.email;
     String password = state.password;
     String confirmPassword = state.confirmPass;

     print('your name is $name');
     print('your email is $email');
     print('your password is $password');
     print('your confirmpass is $confirmPassword');

     if(state.password!=state.confirmPass){
       print('password does not match');
     }
   }
}