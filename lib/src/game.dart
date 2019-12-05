import 'board.dart';
import 'piece.dart';
import 'player.dart';
import 'position.dart';

class Game {
  final Player me;
  final Player opponent;
  final Board chessBoard = Board();
  final List<Move> moves = <Move>[];
  final List<Piece> redChessPieces = <Piece>[];
  final List<Piece> blackChessPieces = <Piece>[];

  Game.f2f(this.me, this.opponent) {
    initPieces(redChessPieces);
    initPieces(blackChessPieces);
    me.takeBlack();
    opponent.takeRed();
    chessBoard.arrangePiecesAtBottom(blackChessPieces);
    chessBoard.arrangePiecesAtTop(redChessPieces);
  }

  initPieces(List<Piece> chessPieces) {
    chessPieces.addAll([
      GeneralPiece(Position(rank: 1, file: 5)),
      AdvisorPiece(Position(rank: 1, file: 4)),
      AdvisorPiece(Position(rank: 1, file: 6)),
      ElephantPiece(Position(rank: 1, file: 3)),
      ElephantPiece(Position(rank: 1, file: 7)),
      HorsePiece(Position(rank: 1, file: 2)),
      HorsePiece(Position(rank: 1, file: 8)),
      ChariotPiece(Position(rank: 1, file: 1)),
      ChariotPiece(Position(rank: 1, file: 9)),
      CannonPiece(Position(rank: 3, file: 2)),
      CannonPiece(Position(rank: 3, file: 8)),
      SoldierPiece(Position(rank: 4, file: 1)),
      SoldierPiece(Position(rank: 4, file: 3)),
      SoldierPiece(Position(rank: 4, file: 5)),
      SoldierPiece(Position(rank: 4, file: 7)),
      SoldierPiece(Position(rank: 4, file: 9))
    ]);
  }
}

class Move {}
