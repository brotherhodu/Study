class Player {
  String name;
  int xp;
  String team;

  // named parameter
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

// cascade operator로 parameters 값 한 번에 변경하기
// 코딩 삶을 편리하게 만드는 syntax sugar!
void main() {
  var eden = Player(name: 'eden', xp: 1200, team: 'red')
    ..name = 'las'
    ..xp = 120000
    ..team = 'blue'
    ..sayHello();
}

// ..에서 앞의 .은 바로 앞의 class를 의미함 (여기서는 eden)
