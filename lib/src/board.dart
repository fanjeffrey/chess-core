import 'piece_layout.dart';
import 'position.dart';

class Board {
  static const int MaxFiles = 9;
  static const int MaxIndex = 89;
  final List<Position> positions = <Position>[];

  Board() {
    for (var i = 0; i < 90; i++) {
      positions.add(createPosition(i));
    }
  }

  Position createPosition(int index) {
    if (index < 0 || index > 89) return null;
    var rank = index ~/ MaxFiles + 1;
    var file = index % MaxFiles + 1;

    return Position(rank: rank, file: file);
  }

  int calculateIndex(Position p) {
    return p.hashCode;
  }

  int calculateIndexFromTop(Position p) {
    return MaxIndex - calculateIndex(p);
  }

  void arrangePiecesAtBottom(PieceLayout chessPieces) {
    chessPieces.mappings.forEach((position, piece) {
      var index = calculateIndex(position);
      positions[index].chessPiece = piece;
    });
  }

  void arrangePiecesAtTop(PieceLayout chessPieces) {
    chessPieces.mappings.forEach((position, piece) {
      var index = calculateIndexFromTop(position);
      positions[index].chessPiece = piece;
    });
  }
}
