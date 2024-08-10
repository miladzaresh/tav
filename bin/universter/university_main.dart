import 'corse.dart';
import 'location_university.dart';
import 'public_corse.dart';
import 'semester.dart';
import 'special_corse.dart';
import 'studient.dart';
import 'universter.dart';

void main() {
  Semester semesterUniversity = Semester(
    '2/2/2',
    '1/1/3',
    [
      PublicCorse('zaban', 3, 12000),
      PublicCorse('zaban', 3, 12100),
      SpecialCorse('riazi', 3, 18000,),
    ],
  );
  Student student=Student(1, 'milad', LocationUniversity('kazeron','','',125));
  Semester semesterStudent = Semester(
    semesterUniversity.startDate,
    semesterUniversity.endDate,
    [
      semesterUniversity.corse[0].copyAndAddStudentId(studentId: student.id),
      semesterUniversity.corse[2].copyAndAddStudentId(studentId: student.id),
    ],
  );
  student.addSemester(semesterStudent);

  University university=University(
    LocationUniversity('shiraz','','',75),
  );

  university.addSemester(semesterUniversity);
  university.addStudent(student);


  print('students : ${university.allStudent}');
  print('students : ${university.allStudent[0].allSemester[0].corse.toString()}');
  print('students : ${university.allStudent[0].allSemester.toString()}');
  print('semesters : ${university.allSemester}');
  print('calculator : ${university.allStudent[0].calculatorCostSemester('2/2/2')}');


}
