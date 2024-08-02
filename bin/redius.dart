
import 'exam.dart';

class  HomeData{
  String name;

  HomeData(this.name);

  int off(){
    return 0;
  }
  int on(){
    return 1;
  }
}
class TV extends HomeData{
  static int counter=0;
  TV(super.name){
    counter++;
  }
  @override
  int off() {
    print('${super.name} off');
    return super.off();
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'tv count $counter';
  }
}
class Freezer extends HomeData{
  static int counter=0;
  Freezer(super.name){
    counter++;
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'freezer count $counter';
  }
}
void main(){
  List<HomeData> data=[];
  int counter=0;
  String input='';
  do{
    input=getInput('enter 1 : tv  2:freezer');
    if(int.tryParse(input)!=null){
      counter++;
      if(input=='1'){
        data.add(TV('LG'));
      }else{
        data.add(Freezer('LG'));
      }
    }
  }while(input.isEmpty || counter<10);

  Freezer? freezer;
  TV? tv;
  for(var item in data){
    if(item is Freezer){
      freezer=item;
    }else if(item is TV){
      tv=item;
    }
  }

  print(freezer.toString());
  print(tv.toString());
}