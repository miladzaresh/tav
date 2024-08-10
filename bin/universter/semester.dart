import 'corse.dart';

class Semester{
  final String startDate;
  final String endDate;
  final List<Corse> corse;

  Semester(this.startDate, this.endDate, this.corse);

  @override
  String toString() {
    // TODO: implement toString
    return 'startDate $startDate  endDate $endDate course ${corse}';
  }
}