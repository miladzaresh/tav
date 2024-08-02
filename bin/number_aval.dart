import 'dart:io';
void main(List<String> arguments) {
  for(int i=0;i<=100;i++){
    bool checkAval=true;
    for(int j=2;j<=i/2;j++){
      if((i%j)==0){
        checkAval=false;
        break;
      }
    }
    if(checkAval){
      print(i);
    }
  }
}
