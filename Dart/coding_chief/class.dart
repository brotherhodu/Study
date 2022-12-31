class AutoMobile {
  String carMaker = "Ford";
  int price = 3000;
  String color = "red";
  int wheelNumber = 4;
}

class NewCar {
  String carMaker2 = "Ford";
  int price2 = 3000;
  String color2 = "red";
  int wheelNumber2 = 4;

  // 클래스 내에서 메소드로 추가해 기능에 대한 내용 추가
  // 메소드의 type을 void로 지정
  // void는 특정 값을 리턴해줄 필요가 없음
  void autoPark() {
    print("자동주차가 가능합니다");
  }
}

// main method에서 객체 만들기
// AutoMobile이라는 설계도를 통해서 객체를 만드는 것이므로 객체의 타입은 AutoMobile
// Automobile 클래스를 불러오고 메소드를 불러오듯이 ()를 붙여줌 (생성자 방식)
void main() {
  AutoMobile a1 = AutoMobile();
  print(a1.carMaker);

  NewCar n1 = NewCar();
  n1.autoPark();
}
