import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:untitled3/Pages/sign_up/notifier/register_state.dart';
part 'register_notifier.g.dart';
@riverpod
class RegNotifier extends _$RegNotifier{

  @override
  Registration build(){
    return Registration();
  }
  void onUserNameChance (String name){
    state = state.copy(username: name);


  }void onEmailNChance (String email){
    state = state.copy(email: email);


  }void onPasswordNameChance (String password){
    state = state.copy(password: password);


  }void onConfirmPasswordNameChance (String confirmPassword){
    state = state.copy(confirmPass: confirmPassword);


  }
}