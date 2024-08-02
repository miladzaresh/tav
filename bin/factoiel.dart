void main() {
  // print(fact(100));
  // print(fibo(3));
  // while(n! > 0){
  //   a=n%10;
  //   s+=a;
  //   n = (n / 10).toInt();
  // }
}
void binaryIndex(){
  List<int> data=[23,4,5];
  int nesf=data.length~/2;
  data.sort();
  if(data[nesf]==25){
    print(nesf);
  }else if(data[nesf]>25){

  }
}
// int returnIndex(int length.int )
// int sumNumbers(int number,int length,int i,List<String> data){
//   if(i+1==length){
//     return int.parse(data[i]);
//   }
//   return int.parse(data[i])+sumNumbers(int.parse(data[i++]), length, i++,data);
// }
dynamic fact(int n){
  if(n<=1){
    return 1;
  }
  return n*fact(n-1);
}
int fibo(int number){
  if(number<=1){
    return number;
  }
  return fibo(number-1)+fibo(number-2);

}
