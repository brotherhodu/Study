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

class Player extends Human {
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

void main() {
  var player = Player(
    team: Team.red,
    name: 'eden',
  );
}
