import 'alien.dart';

class AlienMars extends Alien{
  final int hornCount;
  AlienMars(
      super.legCount,
      super.eyeCount,
      super.toothCount,
      super.skinColor,
      this.hornCount
      );
  @override
  void moveType() {
    // TODO: implement moveType
    print('running mars alien');
  }
}