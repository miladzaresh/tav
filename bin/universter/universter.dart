import 'location_university.dart';
import 'semester.dart';
import 'studient.dart';

class University{
  final LocationUniversity locationUniversity;
  late List<Student> _studients=[];
  late List<Semester> _semster=[];

  University(this.locationUniversity,);

  List<Student> get allStudent => _studients;

  List<Semester> get allSemester => _semster;

  void addStudent(Student student){
    _studients.add(student);
  }

  void addSemester(Semester semester){
    _semster.add(semester);
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'university : $allStudent';
  }
}