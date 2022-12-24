// 추상화클래스는 객체로 생성할 수 없음
// 다른 클래스들이 직접 구현해야 하는 메소드들을 모아놓은 일종의 청사진
// abstract class 는 특정 메소드를 구현하도록 강제함

abstract class Human {
  void walk();
}

enum Team { red, blue }

// Human 클래스를 상속받는 Player 클래스
class Player extends Human {
  String name;
  int xp;
  Team team;

  // named parameter
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('im walking');
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

// cascade operator로 parameters 값 한 번에 변경하기
// 코딩 삶을 편리하게 만드는 syntax sugar!
void main() {
  var eden = Player(name: 'eden', xp: 1200, team: Team.blue)
    ..name = 'las'
    ..xp = 120000
    ..team = Team.blue
    ..sayHello();
}
