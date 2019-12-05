import 'position.dart';

abstract class Piece {
  String name;
  Position position;

  Piece(this.name, this.position);
}

class GeneralPiece extends Piece {
  static const String Name = 'General';

  GeneralPiece(Position p) : super(Name, p);
}

class AdvisorPiece extends Piece {
  static const String Name = 'Advisor';

  AdvisorPiece(Position p) : super(Name, p);
}

class ElephantPiece extends Piece {
  static const String Name = 'Elephant';

  ElephantPiece(Position p) : super(Name, p);
}

class HorsePiece extends Piece {
  static const String Name = 'Horse';

  HorsePiece(Position p) : super(Name, p);
}

class ChariotPiece extends Piece {
  static const String Name = 'Chariot';

  ChariotPiece(Position p) : super(Name, p);
}

class CannonPiece extends Piece {
  static const String Name = 'Cannon';

  CannonPiece(Position p) : super(Name, p);
}

class SoldierPiece extends Piece {
  static const String Name = 'Soldier';

  SoldierPiece(Position p) : super(Name, p);
}
