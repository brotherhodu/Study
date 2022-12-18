// class 내에서는 data type을 반드시 명시할 것!
class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player('eden', 1500);
  player.sayHello();
  var player2 = Player('jade', 2500);
  player2.sayHello();
}
