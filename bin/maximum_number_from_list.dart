import 'dart:io';
void main(List<String> arguments) {
  late String? number=null;
  List<int> numbers=[];
  do{
    print('enter number for save on list:');
    number=stdin.readLineSync();
  }while(number==null||number.isEmpty||int.tryParse(number)==null);
  if(number != null && number.isNotEmpty && int.tryParse(number)!=null){
    int? n=int.tryParse(number);
    if(n != null && n>0){
      for(int i=0;i<n;i++){
        String? temp=null;
        do{
          print('enter number${i+1} :');
          temp=stdin.readLineSync();
        }while(temp==null||temp.isEmpty||int.tryParse(temp)==null);
        numbers.add(int.tryParse(temp)??0);
      }
      numbers.sort();
      print('maximum is :${numbers.last}');
    }else{
      print('list is empty');
    }
  }else{
    print('error type ');
  }
}
