// 개발자들이 오타를 내지 않게 도와주는 것이 Enum

enum Team { red, blue }

class Player {
  String name;
  int xp;
  Team team;

 // named parameter
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name");
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