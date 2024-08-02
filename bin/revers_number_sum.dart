import 'dart:io';
void main(List<String> arguments) {
  late String? number=null;
  do{
    print('enter number:');
    number=stdin.readLineSync();
  }while(number==null||number.isEmpty||int.tryParse(number)==null);

  if(number != null && number.isNotEmpty && int.tryParse(number)!=null){
    int? n=int.tryParse(number);
    int a,s=0;
    if(n !=null && n>0){
      while(n! > 0){
        a=n%10;
        s+=a;
        n = (n / 10).toInt();
      }
      print('reversed number sum is: $s');
    }else{
      print('number is lower');
    }
  }else{
    print('error type ');
  }
}
