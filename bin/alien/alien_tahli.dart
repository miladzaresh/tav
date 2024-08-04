import 'alien.dart';

class AlienSaturn extends Alien{
  final int tailCount;

  AlienSaturn(super.legCount,
      super.eyeCount,
      super.toothCount,
      super.skinColor,
      this.tailCount);

  @override
  void moveType() {
    // TODO: implement moveType
    print('swing saturn alien');
  }
}