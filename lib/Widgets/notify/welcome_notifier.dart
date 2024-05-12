import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'welcome_notifier.g.dart';
@riverpod
class IndexDotPr extends _$IndexDotPr{
  @override
  int build() {
    return 0;
  }
void changeState(int value){
    state=value;



  }

}