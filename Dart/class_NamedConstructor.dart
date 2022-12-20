// class 내에서는 data type을 반드시 명시할 것!
class Player {
  // class 내의 parameters에 대한 type 선언
  final String name;
  int xp, age;
  String team;

// Named Constructor Parameter
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

// Named Constructor 사용
// colon을 쓰면 Player 클래스를 초기화 => Player 객체를 초기화!
  // named parameter 형식
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  // positional parameter 형식
  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

// 함수와 마찬가지로 positional arguments 방식은 각 포지션에 있는 arguments의 의미를 알기 힘듦
// 얘도 마찬가지로 named arguments 방식으로 가보자
// named parameter를 사용하면 각 arguments에 대한 순서는 몰라도 됨. key와 value만 쌍으로 (함수도 똑같음))

void main() {
  var blueplayer = Player.createBluePlayer(
    name: 'eden',
    age: 30,
  );
  var redplayer = Player.createRedPlayer(
    'eden',
    1200,
  );
}
