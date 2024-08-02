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
  sortedList(numbers);
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
void sortedList(List<int> data){
  for(int i=0;i<(data.length-1);i++){
    for(int j=0;j<(data.length-i-1);j++){
      if(data[j] > data[j+1]){
        int temp=data[j];
        data[j]=data[j+1];
        data[j+1]=temp;
      }
    }
  }
}
