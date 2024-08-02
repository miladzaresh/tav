void main(){
  final List<String> list=['a','','milad','ali','hello'];
  List<String> result=returnSorted(list);
  print('result is :$result');
}

List<String> returnSorted(List<String> data){
  for(int i=0;i<(data.length-1);i++){
    for(int j=0;j<(data.length-i-1);j++){
      if(data[j].length > data[j+1].length){
        String temp=data[j];
        data[j]=data[j+1];
        data[j+1]=temp;
      }
    }
  }
  return data;
}