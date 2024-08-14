import 'drink.dart';
import 'food.dart';
import 'type_order.dart';

class Order{
  final List<Food> foods;
  final List<Drink> drinks;
  late TypeOrder? type=null;
  late int _totalCookTime=0;
  late bool isDone=false;
  Order( this.foods, this.drinks);


  int get totalCookTime{
    foods.forEach((element) {
      _totalCookTime+=element.cookTime;
    });
    return _totalCookTime;
  }
  int calculatePrice(){
    int totalPrice=0;
    foods.forEach((element) {
      totalPrice+=element.price;
    });
    drinks.forEach((element) {
      totalPrice+=element.price;
    });
    return totalPrice;
  }


  void showListFoods(){
    print('foods:');
    print('\t title \t description \t price');
    for(int i=0;i<foods.length;i++){
      print('$i \t ${foods[i].title} \t ${foods[i].description??''} \t ${foods[i].price}');

    }
  }
  void showListDrinks(){
    print('drinks:');
    print('\t title \t description \t price');
    for(int i=0;i<drinks.length;i++){
      print('$i \t ${drinks[i].title} \t ${drinks[i].description??''} \t ${drinks[i].price}');

    }
  }

  Food? getSelectedFood(int index){
    if(foods.length-1>index){
      return null;
    }else{
      return foods[index];
    }
  }
  Drink? getSelectedDrink(int index){
    if(drinks.length-1>index){
      return null;
    }else{
      return drinks[index];
    }
  }

}