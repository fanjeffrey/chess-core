class Player {
  String name;
  bool takingRed;

  Player(this.name);

  void takeRed() {
    takingRed = true;
  }

  void takeBlack() {
    takingRed = false;
  }
}
