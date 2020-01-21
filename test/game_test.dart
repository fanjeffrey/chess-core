import 'package:chess_core/chess_core.dart';
import 'package:test/test.dart';

void main() {
  group('Game.f2f', () {
    var redPiecePlayer = 'Xiang Yu';
    var blackPiecePlayer = 'Liu Bang';
    var game = Game.f2f(redPiecePlayer, blackPiecePlayer);

    test('- there should be one board', () {
      expect(game.chessBoard != null, true);
    });

    group('- there should be one set of Red pieces', () {
      var redPieces = game.redPieceLayout.mappings.values;
      verifyPieces(redPieces);
    });

    group('- there should be one set of Black pieces', () {
      var blackPieces = game.blackPieceLayout.mappings.values;
      verifyPieces(blackPieces);
    });

    group(
        '- each Red piece should locate at its start position within the north side of the river',
        () {
      var redPieces = game.redPieceLayout.mappings.values.toList();
      test('- the piece on position #89 should be a Chariot', () {
        expect(game.chessBoard.positions[89].chessPiece, redPieces[0]);
      });
      test('- the piece on position #88 should be a Horse', () {
        expect(game.chessBoard.positions[88].chessPiece, redPieces[1]);
      });
      test('- the piece on position #87 should be an Elephant', () {
        expect(game.chessBoard.positions[87].chessPiece, redPieces[2]);
      });
      test('- the piece on position #86 should be an Advisor', () {
        expect(game.chessBoard.positions[86].chessPiece, redPieces[3]);
      });
      test('- the piece on position #85 should be a General', () {
        expect(game.chessBoard.positions[85].chessPiece, redPieces[4]);
      });
      test('- the piece on position #84 should be an Advisor', () {
        expect(game.chessBoard.positions[84].chessPiece, redPieces[5]);
      });
      test('- the piece on position #83 should be an Elephant', () {
        expect(game.chessBoard.positions[83].chessPiece, redPieces[6]);
      });
      test('- the piece on position #82 should be a Horse', () {
        expect(game.chessBoard.positions[82].chessPiece, redPieces[7]);
      });
      test('- the piece on position #81 should be a Chariot', () {
        expect(game.chessBoard.positions[81].chessPiece, redPieces[8]);
      });

      test('- the piece on position #70 should be a Cannon', () {
        expect(game.chessBoard.positions[70].chessPiece, redPieces[9]);
      });
      test('- the piece on position #64 should be a Cannon', () {
        expect(game.chessBoard.positions[64].chessPiece, redPieces[10]);
      });

      test('- the piece on position #62 should be a Soldier', () {
        expect(game.chessBoard.positions[62].chessPiece, redPieces[11]);
      });
      test('- the piece on position #60 should be a Soldier', () {
        expect(game.chessBoard.positions[60].chessPiece, redPieces[12]);
      });
      test('- the piece on position #58 should be a Soldier', () {
        expect(game.chessBoard.positions[58].chessPiece, redPieces[13]);
      });
      test('- the piece on position #56 should be a Soldier', () {
        expect(game.chessBoard.positions[56].chessPiece, redPieces[14]);
      });
      test('- the piece on position #54 should be a Soldier', () {
        expect(game.chessBoard.positions[54].chessPiece, redPieces[15]);
      });
    });

    group(
        '- each Black piece should locate at its start position within the south side of the river',
        () {
      var blackPieces = game.blackPieceLayout.mappings.values.toList();
      test('- the piece on position #0 should be a Chariot', () {
        expect(game.chessBoard.positions[0].chessPiece, blackPieces[0]);
      });
      test('- the piece on position #1 should be a Horse', () {
        expect(game.chessBoard.positions[1].chessPiece, blackPieces[1]);
      });
      test('- the piece on position #2 should be an Elephant', () {
        expect(game.chessBoard.positions[2].chessPiece, blackPieces[2]);
      });
      test('- the piece on position #3 should be an Advisor', () {
        expect(game.chessBoard.positions[3].chessPiece, blackPieces[3]);
      });
      test('- the piece on position #4 should be a General', () {
        expect(game.chessBoard.positions[4].chessPiece, blackPieces[4]);
      });
      test('- the piece on position #5 should be an Advisor', () {
        expect(game.chessBoard.positions[5].chessPiece, blackPieces[5]);
      });
      test('- the piece on position #6 should be an Elephant', () {
        expect(game.chessBoard.positions[6].chessPiece, blackPieces[6]);
      });
      test('- the piece on position #7 should be a Horse', () {
        expect(game.chessBoard.positions[7].chessPiece, blackPieces[7]);
      });
      test('- the piece on position #8 should be a Chariot', () {
        expect(game.chessBoard.positions[8].chessPiece, blackPieces[8]);
      });

      test('- the piece on position #19 should be a Cannon', () {
        expect(game.chessBoard.positions[19].chessPiece, blackPieces[9]);
      });
      test('- the piece on position #25 should be a Cannon', () {
        expect(game.chessBoard.positions[25].chessPiece, blackPieces[10]);
      });

      test('- the piece on position #27 should be a Soldier', () {
        expect(game.chessBoard.positions[27].chessPiece, blackPieces[11]);
      });
      test('- the piece on position #29 should be a Soldier', () {
        expect(game.chessBoard.positions[29].chessPiece, blackPieces[12]);
      });
      test('- the piece on position #31 should be a Soldier', () {
        expect(game.chessBoard.positions[31].chessPiece, blackPieces[13]);
      });
      test('- the piece on position #33 should be a Soldier', () {
        expect(game.chessBoard.positions[33].chessPiece, blackPieces[14]);
      });
      test('- the piece on position #35 should be a Soldier', () {
        expect(game.chessBoard.positions[35].chessPiece, blackPieces[15]);
      });
    });

    test('- the opponent should use the Red pieces', () {
      expect(game.redPiecePlayer, redPiecePlayer);
    });

    test('- I should use the Black pieces', () {
      expect(game.blackPiecePlayer, blackPiecePlayer);
    });

    test('- the moves history should be empty', () {
      expect(game.moves.length, 0);
    });
  });
}

void verifyPieces(Iterable<Piece> pieces) {
  test('- should consist of 16 pieces', () {
    expect(pieces.length, 16);
  });

  test('- only 1 General piece', () {
    expect(pieces.whereType<GeneralPiece>().length, 1);
  });

  test('- only 2 Advisor pieces', () {
    expect(pieces.whereType<AdvisorPiece>().length, 2);
  });

  test('- only 2 Elephant pieces', () {
    expect(pieces.whereType<ElephantPiece>().length, 2);
  });

  test('- only 2 Horse pieces', () {
    expect(pieces.whereType<HorsePiece>().length, 2);
  });

  test('- only 2 Chariot pieces', () {
    expect(pieces.whereType<ChariotPiece>().length, 2);
  });

  test('- only 2 Cannon pieces', () {
    expect(pieces.whereType<CannonPiece>().length, 2);
  });

  test('- only 5 Soldier pieces', () {
    expect(pieces.whereType<SoldierPiece>().length, 5);
  });
}
