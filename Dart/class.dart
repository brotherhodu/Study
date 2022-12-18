// class 내에서는 data type을 반드시 명시할 것!
class Player {
  final String name = 'eden';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player();
  player.sayHello();
}
