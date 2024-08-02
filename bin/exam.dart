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
  print('minimum number ${minimumResult()}');
  print('maximum number : ${maximumResult()}');
  print('average : ${mianginResult(numbers.last)/numbers.length}');
  print('por tekrar tarin adad dar list ${porTekrarTarinAdad()}');

}
int porTekrarTarinAdad(){
  int result=0;
  List<List<int>> resultCounter=[];
  numbers.forEach((element) {
    List<int> temp=[];
    for (var value in numbers) {
      if(element == value){
        temp.add(value);
      }
    }
    resultCounter.add(temp);
  });
  int lengthCheck=resultCounter.first.length;
  for(int i=0;i<resultCounter.length;i++){
    if(lengthCheck<resultCounter[i].length){
      lengthCheck=resultCounter[i].length;
      result=resultCounter[i].first;
    }
  }
  return result;
}
int minimumResult(){
  int temp=numbers.first;
  numbers.forEach((element) {
    if(temp>element){
      temp=element;
    }
  });
  return temp;
}
int maximumResult(){
  int temp=numbers.first;
  numbers.forEach((element) {
    if(temp<element){
      temp=element;
    }
  });
  return temp;
}
int mianginResult(int number){
  if(counterSum==0){
    return numbers[counterSum];
  }
  return number+mianginResult(numbers[counterSum--]);
}
String getInput(String printer,){
  String? result=null;
  do{
    print(printer);
    result=stdin.readLineSync();
  }while(result==null||result.isEmpty || int.tryParse(result)==null);

  return result;
}