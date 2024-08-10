class Corse {
  final String title;
  final int unitCount;
  final int cost;
  final int? studentId;
  late List<int> _students=[];
  Corse(this.title, this.unitCount, this.cost, {this.studentId}){
    if(studentId != null){
      _students.add(studentId!);
    }
  }
  Corse copyAndAddStudentId({String? title,int? unitCount,int? cost,int? studentId})=>
      Corse(
        title ?? this.title,
        unitCount ?? this.unitCount,
        cost ?? this.cost,
        studentId: studentId
      );

  @override
  String toString() {
    // TODO: implement toString
    return 'title $title  unitCount $unitCount  cost $cost  studentIds  $_students';
  }
}
