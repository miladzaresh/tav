import '../doz_game.dart';
import 'location_university.dart';
import 'semester.dart';

class Student{
  final int id;
  final String name;
  final LocationUniversity locationUniversity;
  late List<Semester> _semester=[];

  Student(this.id, this.name,this.locationUniversity);

  List<Semester> get allSemester => _semester;

  void clearSemster(){
    _semester.clear();
  }
  void addSemester(Semester semester){
    _semester.add(semester);
  }
  double calculatorCostSemester(String startDate){
    double result=0;
    _semester.forEach((element) {
      if(element.startDate==startDate){
        if(element.corse.length<7){
          element.corse.forEach((corseElement) {
            result+=((corseElement.cost*corseElement.unitCount)+(this.locationUniversity.factor*corseElement.cost));
          });
          result+=100;
        }else if(element.corse.length>18){
          for(int i=0;i<18;i++){
            result+=((element.corse[i].cost*element.corse[i].unitCount)+(this.locationUniversity.factor*element.corse[i].cost));
          }
        }else{
          element.corse.forEach((corseElement) {
            result+=((corseElement.cost*corseElement.unitCount)+(this.locationUniversity.factor*corseElement.cost));
          });
        }
      }
    });
    return result;

  }
}