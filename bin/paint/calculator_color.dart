
import 'area.dart';
import 'color_details.dart';
import 'empty_space.dart';
import 'location.dart';
void main(){
  List<CalculatorColor> calculatorColors=[
    CalculatorColor(
        Location('inside',1),
        Area(1000, [EmptySpace(12, 21),EmptySpace(10, 22),EmptySpace(34, 34),]),
        ColorDetails('rogani', 12000)),
    CalculatorColor(
        Location('outside',1),
        Area(10000, [EmptySpace(13, 25),EmptySpace(200, 160),]),
        ColorDetails('pelastic', 6000)),
  ];

  calculatorColors.forEach((element) {
    print(element.calculate());
    print('/////////');
  });
}

class CalculatorColor{
  final Location location;
  final Area area;
  final ColorDetails colorDetails;

  CalculatorColor(this.location, this.area, this.colorDetails);

  int calculate(){
    return location.factor*area.calculatorArea()*colorDetails.price;
  }
}