import 'dart:io';
import 'dart:math';
void main(){
  List<int> temp=[];
  for(int i=0;i<100;i++){
    temp.add(Random().nextInt(120));
  }
  searchBinary(number: temp, target: 3);
}
void searchBinary({
  required List<int> number,
  required int target
}){
  int index=-1;
  print('check ${number.indexWhere((element) => element==target)}');
  int nesfLenght=number.length~/2;
  if(number[nesfLenght]==target){
    print('index is $nesfLenght');
  }else if(number[nesfLenght]>target){
    for(int i=0;i<nesfLenght;i++){
      if(number[i]==target){
        index=i;
      }
    }
  }else{
    for(int i=nesfLenght;i<number.length;i++){
      if(number[i]==target){
        index=i;
      }
    }
  }
  print('index is $index');
}