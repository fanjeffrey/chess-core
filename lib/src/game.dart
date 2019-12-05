import 'board.dart';
import 'piece_layout.dart';
import 'player.dart';

class Game {
  final Player me;
  final Player opponent;
  final Board chessBoard = Board();
  final List<Move> moves = <Move>[];
  final PieceLayout blackPieceLayout;
  final PieceLayout redPieceLayout;

  Game.f2f(this.me, this.opponent, this.blackPieceLayout, this.redPieceLayout) {
    me.takeBlack();
    opponent.takeRed();
    chessBoard.arrangePiecesAtBottom(blackPieceLayout);
    chessBoard.arrangePiecesAtTop(redPieceLayout);
  }
}

class Move {}
