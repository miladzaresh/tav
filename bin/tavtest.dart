import 'dart:io';
import 'utils.dart';
void main(List<String> arguments) {
  String? result=null;
  String text=getInput('enter number',);
  int count=0;
  for(int i=0;i<text.split('').length;i++){
    if(haveSound(text.split('')[i])){
      count++;
    }
  }
  print('count sound is :$count');

}
bool haveSound(String value){
  switch(value){
    case 'a':
      return true;
    case 'i':
      return true;
    case 'o':
      return true;
    case 'e':
      return true;
    case 'u':
      return true;
    default:
      return false;
  }
}