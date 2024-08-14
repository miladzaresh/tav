import 'drink.dart';
import 'food.dart';

class MenuOrder{
  late List<Food> _foods=[];
  late List<Drink> _drinks=[];

  void addFoodAndCheckNotExistFood(Food food){
    if(!_foods.any((element) => element.title==food.title)){
      _foods.add(food);
    }else{
      print('error : this food is exist');
    }
  }
  void addDrinkAndCheckNotExistDrink(Drink drink){
    if(!_drinks.any((element) => element.title==drink.title)){
      _drinks.add(drink);
    }else{
      print('error : this drink is exist');
    }
  }
  void deleteDrink(Drink drink){
    if(!_drinks.any((element) => element.title==drink.title)){
      _drinks.remove(drink);
    }else{
      print('error : this drink is exist');
    }
  }

  void deleteFood(Food food){
    if(!_foods.any((element) => element.title==food.title)){
      _foods.remove(food);
    }else{
      print('error : this drink is exist');
    }
  }
  Food? getSelectedFood(int index){
    if(_foods.length-1>index){
      return null;
    }else{
      return _foods[index];
    }
  }
  Drink? getSelectedDrink(int index){
    if(_drinks.length-1>index){
      return null;
    }else{
      return _drinks[index];
    }
  }

  void showListFoods(){
    print('foods:');
    print('\t title \t description \t price');
    for(int i=0;i<_foods.length;i++){
      print('$i \t ${_foods[i].title} \t ${_foods[i].description??''} \t ${_foods[i].price}');

    }
  }
  void showListDrinks(){
    print('drinks:');
    print('\t title \t description \t price');
    for(int i=0;i<_drinks.length;i++){
      print('$i \t ${_drinks[i].title} \t ${_drinks[i].description??''} \t ${_drinks[i].price}');

    }
  }

}