import 'piece.dart';

class Position {
  static const int MaxFiles = 9;
  final int rank;
  final int file;
  Piece chessPiece;

  Position({this.rank, this.file});

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) || (rank == other.rank && file == other.file);

  @override
  int get hashCode => (rank - 1) * MaxFiles + file - 1;

  @override
  String toString() {
    return '{rank: $rank, file: $file}';
  }
}
