import 'utils.dart';
List<Map<String,dynamic>> todoList=[];

void main(){
  startMenu();
}
void startMenu(){
  String input=getInput('Hello , Welcome to TODOManager  enter number \t  1:all todo  2:add todo  3:edit todo 4:delete todo 5:done todo 6:exit');
  switch(input){
    case '1':
      '1';
      getAllTOdo();
      break;
    case '2':
      addTOdo();
      break;
    case '3':
      showOptions('enter number of todo you want edit', 'edit');
      break;
    case '4':
      showOptions('enter number of todo you want delete ', 'delete');
      break;
    case '5':
      showOptions('enter number of todo you want done it ', 'done');
      break;
    default:
      print('exit of TODOManager');
      return;
  }
}


void addTOdo(){
  String title=getInput('enter title todo');
  String message=getInput('enter message todo');
  String olaviat=getInput('enter 0 or 1 for olaviat todo');
  todoList.add(
    {
      'title':title,
      'message':message,
      'status':'pending',
      'olaviat':olaviat
    }
  );
  startMenu();
}
void editTOdo(int index){
  String title=getInput('enter title todo');
  String message=getInput('enter title todo');
  todoList[index]['title']=title;
  todoList[index]['message']=message;
  startMenu();
}
void doneTOdo(int index){
  todoList[index]['status']='done';
  startMenu();
}
bool checkIndex(int index){
  if(todoList.length-1<index){
    print('todo not found');
    return false;
  }
  return true;
}
void showOptions(String message,String method){
  getAllTOdo();
  String input=getInput(message);
  if(int.tryParse(input)!=null){
    int index=int.parse(input);
    if(checkIndex(index)){
      switch(method){
        case 'edit':
          editTOdo(index);
          break;
        case 'delete':
          deleteTodo(todoList[index]['title']);
          break;
        case 'done':
          doneTOdo(index);
          break;
      }
    }
  }else{
    print('enter invalid data ');
    startMenu();
  }
}
void deleteTodo(String title){
  todoList.removeAt(todoList.indexWhere((element) => element['title']==title));
  startMenu();
}
void getAllTOdo(){
  print('      title\tmessage \t status \t olaviat');
  if(todoList.isEmpty){
    print('empty list , please add one todo');
  }else{
    sortByOlaviat();
    for(int i=0;i<todoList.length;i++){
      print('$i : ${todoList[i]['title']}\t${todoList[i]['message']}\t ${todoList[i]['status']} \t ${todoList[i]['olaviat']}');
    }

  }
  // startMenu();
}
void sortByOlaviat(){
  for(int i=0;i<(todoList.length-1);i++){
    for(int j=0;j<(todoList.length-i-1);j++){
      if(todoList[j+1]['olaviat']=='1'){
        Map<String,dynamic> temp=todoList[j];
        todoList[j]=todoList[j+1];
        todoList[j+1]=temp;
      }
    }
  }
}