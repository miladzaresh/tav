import '../exam.dart';
import 'drink.dart';
import 'food.dart';
import 'order.dart';
import 'resturan.dart';
import 'table.dart';
import 'type_order.dart';

void main(){
  startMenu();
}
void startMenu(){
  Resturan resturan=Resturan('milad');
  String input=getInput('Welcome to ${resturan.name} ,Enter number \t  1:admin  2:create order  3: 4: 5: 6:');
  switch(input){
    case '1':
      startAdminMenu(resturan);
      break;
    case '2':
      startCreateOrderMenu(resturan,Order([], [],));
      break;
    case '3':
      break;
    case '4':
      break;
    case '5':
      break;
    default:
      print('exit of Resturan');
      return;
  }
}
void startAdminMenu(Resturan resturan){
  String input=getInput('Enter number \t  1:show all products  2:add food  3:add drink 4:delte food 5:delete drink 6:show all orders 7:delete order 8:show all table 9:add table 10:remove table 11:exit');
  switch(input){
    case '1':
      resturan.menuOrder.showListFoods();
      resturan.menuOrder.showListDrinks();
      startAdminMenu(resturan);
      break;
    case '2':
      String title=getInputString('enter food title');
      String description=getInputString('enter food description');
      String price=getInput('enter food price');
      String cookTime=getInput('enter food cook time');
      resturan.menuOrder.addFoodAndCheckNotExistFood(Food(title: title, description: description, price: int.parse(price),cookTime: int.parse(cookTime)));
      startAdminMenu(resturan);
      break;
    case '3':
      String title=getInputString('enter drink title');
      String description=getInputString('enter drink description');
      String price=getInput('enter drink price');
      String count=getInput('enter drink count');
      resturan.menuOrder.addDrinkAndCheckNotExistDrink(Drink(title: title, description: description, price: int.parse(price),count: int.parse(count)));
      startAdminMenu(resturan);
      break;
    case '4':
      resturan.menuOrder.showListFoods();
      String index=getInput('enter index of food');
      Food? food=resturan.menuOrder.getSelectedFood(int.parse(index));
      if(food != null){
        resturan.menuOrder.deleteFood(food);
      }else{
        print('this food not found');
      }
      startAdminMenu(resturan);
      break;
    case '5':
      resturan.menuOrder.showListDrinks();
      String index=getInput('enter index of drink');
      Drink? drink=resturan.menuOrder.getSelectedDrink(int.parse(index));
      if(drink != null){
        resturan.menuOrder.deleteDrink(drink);
      }else{
        print('this drink not found');
      }
      startAdminMenu(resturan);
      break;
    case '6':
      resturan.showAllOrder();
      break;
    case '7':
      resturan.showAllOrder();
      String getOneOrder=getInput('enter number of order');
      resturan.removeOrder(int.parse(getOneOrder));
      startAdminMenu(resturan);
      break;
    case '8':
      resturan.showListTables();
      startAdminMenu(resturan);
      break;
    case '9':
      String personCount=getInput('enter person count');
      String number=getInput('enter number for table');
      String type=getInput('enter number 1:reserve 2:full 3:empty');
      resturan.addTable(Table(int.parse(number), int.parse(personCount), type=='1'?TableType.RESERVE:type=='2'?TableType.FULL:TableType.EMPTY));
      
      break;
    default:
      print('exit of admin');
      startMenu();
      return;
  }
}

void startCreateOrderMenu(Resturan resturan,Order order){
  String input=getInput('Enter number \t  1:choose foods  2:choose drinks  3:select type 4:delete food 5:delete drink  6:submit ');
  switch(input){
    case '1':
      resturan.menuOrder.showListFoods();
      String foodsIndex=getInputString('please enter list of number sample 2,1,3');
      List<int> indexes=[];
      foodsIndex.split(',').forEach((element) {
        indexes.add(int.parse(element));
      });
      indexes.forEach((indexSelectedFoodElement) {
        Food? food=resturan.menuOrder.getSelectedFood(indexSelectedFoodElement);
        if(food != null){
          order.foods.add(food);
        }
      });
      startCreateOrderMenu(resturan, order);
      break;
    case '2':
      resturan.menuOrder.showListDrinks();
      String foodsIndex=getInputString('please enter list of number sample 2,1,3');
      List<int> indexes=[];
      foodsIndex.split(',').forEach((element) {
        indexes.add(int.parse(element));
      });
      indexes.forEach((indexSelectedDrinkElement) {
        Drink? drink=resturan.menuOrder.getSelectedDrink(indexSelectedDrinkElement);
        if(drink != null){
          if(drink.count!=0){
            drink.count-1;
            order.drinks.add(drink);
          }
        }
      });
      startCreateOrderMenu(resturan, order);
      break;
    case '3':
      String input=getInputString('enter char o:onWhere  b:bironbar');
      order.type=input=='o'?TypeOrder.ONWHERE:input=='b'?TypeOrder.BIRONBAR:null;
      startCreateOrderMenu(resturan, order);
      break;
    case '4':
      order.showListFoods();
      String index=getInput('enter number of food');
      Food? food=order.getSelectedFood(int.parse(index));
      if(food != null){
        order.foods.remove(food);
      }
      break;
    case '5':
      order.showListFoods();
      String index=getInput('enter number of drink');
      Drink? drink=order.getSelectedDrink(int.parse(index));
      if(drink != null){
        order.drinks.remove(drink);
        drink.count+1;
      }
      break;
    case '6':
      String checkDone=getInputString('is order done y:yes n:no');
      if(checkDone=='y'){
        order.isDone=true;
      }
      resturan.addOrder(order);
      startMenu();
      break;
    default:
      print('exit of admin');
      startMenu();
      return;
  }
}
