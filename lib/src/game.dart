import 'board.dart';
import 'piece_layout.dart';

class Game {
  final String redPiecePlayer;
  final String blackPiecePlayer;
  PieceLayout redPieceLayout;
  PieceLayout blackPieceLayout;
  final Board chessBoard = Board();
  final List<Move> moves = <Move>[];

  Game.f2f(this.redPiecePlayer, this.blackPiecePlayer) {
    redPieceLayout = PieceLayout.createDefaultLayout();
    blackPieceLayout = PieceLayout.createDefaultLayout();
    chessBoard.arrangePiecesAtTop(redPieceLayout);
    chessBoard.arrangePiecesAtBottom(blackPieceLayout);
  }
}

class Move {}
