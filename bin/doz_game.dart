import 'dart:io';

import 'utils.dart';

List<String> square=['0','1','2','3','4','5','6','7','8','9'];
late int player=1,i;
late String marker='';
void main(){
  do{
    board();
    player=player%2==1?1:2;
    String input=getInput('player $player enter number :');
    if(int.tryParse(input)!=null){
      marker=player==1?'X':'Y';
      int choice=int.tryParse(input)!;
      if(choice==1&&square[1]=='1'){
        square[1]=marker;
      }else if(choice==2&&square[2]=='2'){
        square[2]=marker;
      }else if(choice==3&&square[3]=='3'){
        square[3]=marker;
      }else if(choice==4&&square[4]=='4'){
        square[4]=marker;
      }else if(choice==5&&square[5]=='5'){
        square[5]=marker;
      }else if(choice==6&&square[6]=='6'){
        square[6]=marker;
      }else if(choice==7&&square[7]=='7'){
        square[7]=marker;
      }else if(choice==8&&square[8]=='8'){
        square[8]=marker;
      }else if(choice==9&&square[9]=='9'){
        square[9]=marker;
      }else{
        print('invalid');
        player--;
        return;
      }
      i=checkWin();
      player++;
    }else{
      print('error');
      return;
    }
  }while(i==-1);
  board();
  if(i==1){
    print('player $marker wine');
  }else{
    print('game draw');
  }
}
int checkWin(){
  if(square[1]==square[2]&&square[2]==square[3]){
    return 1;
  }else if(square[4]==square[5]&&square[5]==square[6]){
    return 1;
  }else if(square[7]==square[8]&&square[8]==square[9]){
    return 1;
  }else if(square[1]==square[4]&&square[4]==square[7]){
    return 1;
  }else if(square[2]==square[5]&&square[5]==square[8]){
    return 1;
  }else if(square[3]==square[6]&&square[6]==square[9]){
    return 1;
  }else if(square[3]==square[5]&&square[5]==square[7]){
    return 1;
  }else if(square[1]!='1'&&square[2]!='2'&&square[3]!='3'&&square[4]!='4'&&square[5]!='5'&&square[6]!='6'&&square[7]!='7'&&square[8]!='8'&&square[9]!='9'){
    return 0;
  }else{
    return -1;
  }
}
void board(){
  for(int i=0;i<=3;i++){
    for(int j=1;j<square.length;j++){
      if(j%3==1){
        stdout.write('| $j | ');
      }
    }
    if(i==0){
      print('________');
    }else if(i==3){
      print('\n__|__|__');
    }else{
      print('\n__|__|__');
    }
  }
  print('player1 :X player2 :O');
  print('   |   |  ');
  print(' ${square[1]} | ${square[2]} | ${square[3]}');
  print('___|___|___');
  print('   |   |  ');
  print(' ${square[4]} | ${square[5]} | ${square[6]}');
  print('___|___|___');
  print('   |   |  ');
  print(' ${square[7]} | ${square[8]} | ${square[9]}');
  print('   |   |   ');

}