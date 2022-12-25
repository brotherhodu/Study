// Mixin은 생성자가 없는 클래스를 의미함 (생성자가 없는 클래스인 것이 핵심)
// 클래스에 프로퍼티를 추가할 때 사용함
// Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점!
// 상속보다는 더 간단함. 부모 클래스가 되는 것이 아니라 단순히 뺏어오는 개념

class Strong {
  final double strengthLevel = 1500.99;
}
// 어떠한 생성자(constructor)도 가지고 있지 않음

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuun!!");
  }
}

class Tall {
  final double height = 1.99;
}

class Human {
  final String name;
  Human(this.name);
  void sayHello() {
    print("Hi my name is $name");
  }
}

// super는 상속한 부모 클래스의 property에 접근하거나 method를 호출할 수 있게 해준다.
// 확장한 부모 클래스가 생성자를 포함하고 있는데, 그 클래스를 다른 곳에서 사용하려면 필요한 값을 전달해야 하고, 그 부모 클래스의 생성자를 호출해줘야 한다. (super(name:name))
enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

class Horse with Strong, QuickRunner {}

class kid with QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
    name: 'eden',
  );
  player.runQuick();
}
