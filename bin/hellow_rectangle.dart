import 'dart:io';
void main(List<String> arguments) {
  late String? width=null;
  late String? height=null;
  do{
    print('enter width:');
    width=stdin.readLineSync();
  }while(width==null||width.isEmpty||int.tryParse(width)==null);
  do{
    print('enter height:');
    height=stdin.readLineSync();
  }while(height==null||height.isEmpty||int.tryParse(height)==null);

  if(width != null && height != null && width.isNotEmpty && height.isNotEmpty){
    final int? w=int.tryParse(width);
    final int? h=int.tryParse(height);

    if(w != null && h!=null){
      if(h>w||w>h){
        for(int i=1;i<=h;i++){
          if(i==1||i==h){
            for(int j=1;j<=w;j++){
              stdout.write('*');
            }
          }else{
            for(int j=1;j<=w;j++){
              if(j==1||j==w){
                stdout.write('*');
              }else{
                stdout.write(' ');

              }
            }
          }
          print('');
        }
      }else{
        print('width and height are not rectangle');
      }
    }else{
      print('error type');
    }
  }else{
    print('error');
  }
}