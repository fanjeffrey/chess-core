import 'piece.dart';
import 'position.dart';

class PieceLayout {
  final Map<Position, Piece> mappings;

  PieceLayout(this.mappings);

  static PieceLayout createDefaultLayout() => PieceLayout({
        Position(rank: 1, file: 5): GeneralPiece(),
        Position(rank: 1, file: 4): AdvisorPiece(),
        Position(rank: 1, file: 6): AdvisorPiece(),
        Position(rank: 1, file: 3): ElephantPiece(),
        Position(rank: 1, file: 7): ElephantPiece(),
        Position(rank: 1, file: 2): HorsePiece(),
        Position(rank: 1, file: 8): HorsePiece(),
        Position(rank: 1, file: 1): ChariotPiece(),
        Position(rank: 1, file: 9): ChariotPiece(),
        Position(rank: 3, file: 2): CannonPiece(),
        Position(rank: 3, file: 8): CannonPiece(),
        Position(rank: 4, file: 1): SoldierPiece(),
        Position(rank: 4, file: 3): SoldierPiece(),
        Position(rank: 4, file: 5): SoldierPiece(),
        Position(rank: 4, file: 7): SoldierPiece(),
        Position(rank: 4, file: 9): SoldierPiece()
      });
}
