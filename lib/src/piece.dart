abstract class Piece {
  final String name;

  Piece(this.name);
}

class GeneralPiece extends Piece {
  static const String Name = 'General';

  GeneralPiece() : super(Name);
}

class AdvisorPiece extends Piece {
  static const String Name = 'Advisor';

  AdvisorPiece() : super(Name);
}

class ElephantPiece extends Piece {
  static const String Name = 'Elephant';

  ElephantPiece() : super(Name);
}

class HorsePiece extends Piece {
  static const String Name = 'Horse';

  HorsePiece() : super(Name);
}

class ChariotPiece extends Piece {
  static const String Name = 'Chariot';

  ChariotPiece() : super(Name);
}

class CannonPiece extends Piece {
  static const String Name = 'Cannon';

  CannonPiece() : super(Name);
}

class SoldierPiece extends Piece {
  static const String Name = 'Soldier';

  SoldierPiece() : super(Name);
}
