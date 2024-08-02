

import 'utils.dart';
late List<String> steps=['apple','original','test'];

void main(){
  String input=getInput('Hello welcome to MGame . \nAre you ready? Y:yes N:exit',);
  if(input.toUpperCase()=='Y'){
    startGame(steps);
  }else if(input.toUpperCase()=='N'){
    print('exit of game');
    return;
  }else{
    print('error');
  }
}
void startGame(List<String> steps){
  String input=getInput('all steps :${steps.length} , enter step \t  1:step1  2:step2  3:step3 4:exit');
  switch(input){
    case '1':
      startStep(steps[0]);
      break;
    case '2':
      startStep(steps[1]);
      break;
    case '3':
      startStep(steps[2]);
      break;
    default:
      print('exit of game');
      return;
  }
}

void startStep(String value){
  List<String> warnings=[];
  List<String> valueList=convertDashString( value.split(''));
  bool checkExist=false;
  int counter=1;
  do{
    String input=getInput('please suggest one character \t ${valueList.join()}');
    if(input.length>1){
      checkExist=false;
      warnings.add(input);
      print('suggested warning: $warnings');
    }else{
      checkExist=replaceDashToOriginalString(input, value.split(''),valueList);
      if(!checkExist){
        warnings.add(input);
        print('suggested warning: $warnings');
      }else{
        counter++;
        print('check data ${counter>valueList.length}');
      }
    }
  }while(counter<valueList.length);
  startGame(steps);
}
bool replaceDashToOriginalString(String replaceChar,List<String> originalList,List<String> valueList,){
  bool checkExist=false;
  for(int i=0;i<originalList.length;i++){
    if(originalList[i]==replaceChar){
      valueList[i]=replaceChar;
      checkExist=true;
    }
  }
  return checkExist;
}
List<String> convertDashString(List<String> textList){
  for(int i=0;i<textList.length;i++){
    textList[i]=' _';
  }
  return textList;
}