import 'utils.dart';

void main(){
  String input=getInput('enter number');
  bool Function(String value) checkPositive=(String value)=>int.tryParse(value)!=null && !int.tryParse(value)!.isNegative;
  int Function(int number,int value) multipleToNumber=(int number,int value)=>number*value;
  if(checkPositive(input)){
    print(multipleToNumber(3,int.parse(input)));
  }else{
    print('error');
  }
}