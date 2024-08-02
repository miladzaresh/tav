import '../sort_string_list.dart';
import 'empty_space.dart';

class Area {
  final int area;
  final List<EmptySpace> space;

  Area(this.area, this.space);

  int calculatorArea(){
    int result=0;
    if(space.isEmpty){
      return area;
    }else{
      int sumSpaceArea=0;
      space.forEach((element) {
        sumSpaceArea+=element.sumAreaEmptySpace();
      });
      result=area-sumSpaceArea;
    }
    return result ;
  }
}