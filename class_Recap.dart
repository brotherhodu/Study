// API로 여러 Player 목록이 있는 데이터를 받는다고 가정
// Class와 Constructor 만들어보기

class Player {
  // class 내의 parameters에 대한 type 선언
  final String name;
  int xp;
  String team;

// Player Class의 초기화 작업
// Player.fromJson 이라는 constructor로 이름 바꿈
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name and I'm in the $team");
  }
}

void main() {
  var apiData = [
    {
      "name": "eden",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "jade",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "yo",
      "team": "purple",
      "xp": 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}

// main을 실행하면 구조화되지 않은 데이터를 가져옴
// string을 key로, dynamic value를 values로 갖는 Map을 성공적으로 가지고 옴