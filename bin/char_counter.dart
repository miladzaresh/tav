import 'dart:io';
void main(){
  final String? input=stdin.readLineSync();
  final chars=input!.split(' ');
  Map<String,int> counter={};
  Map<String,List<String>> splitResult={};

  chars.forEach((element) {
    if(element.isNotEmpty){
      splitResult.addAll({'${element.split('').first}':[]});
      counter.addAll({'$element':0});
    }
  });

  chars.forEach((element) {
    if(counter.containsKey(element)){
      counter[element]=counter[element]!+1;
    }
  });
  chars.forEach((element) {
    if(element.isNotEmpty){
      if(splitResult.containsKey(element.split('').first)){
        List<String> result=[];
        for (var value in chars) {
          if(value.isNotEmpty){
            if(element.split('').first==value.split('').first){
              result.add(value);
            }
          }
        }
        splitResult[element.split('').first]=result;
      }

    }
  });

  print(counter);
  print(splitResult);
}