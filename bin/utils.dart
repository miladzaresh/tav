import 'dart:io';
String getInput(String printer,){
  String? result=null;
  do{
    print(printer);
    result=stdin.readLineSync();
  }while(result==null||result.isEmpty);

  return result;
}