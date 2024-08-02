import 'dart:io';

late List<int> numbers=[];
late int counterSum=9;
void main(){
  int counter=0;
  do{
    String input =getInput('enter number ${numbers.length+1}');
    if(input.isNotEmpty){
      numbers.add(int.parse(input));
      counter++;
    }
  }while(counter<10);
  print('before sorted ${numbers}');
  deleteAgainNumber(numbers);
  print('after sorted ${numbers}');
}
String getInput(String printer,){
  String? result=null;
  do{
    print(printer);
    result=stdin.readLineSync();
  }while(result==null||result.isEmpty || int.tryParse(result)==null);

  return result;
}

void deleteAgainNumber(List<int> data){
  List<int> temp=[];
  numbers.forEach((element) {
    for (int value in numbers) {
      if(value==element){
        if(!chekExistValue(temp, value)){
          temp.add(value);
        }
      }
    }
  });
  numbers=temp;
}
bool chekExistValue(List<int> temp,int value){
  for(int element in temp) {
    if(value==element){
      return true;
    }
  }
  return false;

}
