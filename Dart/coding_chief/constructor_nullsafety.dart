// 변수의 타입 뒤에 ?를 붙이면 값이 할당될 수도 안될 수도 있다고 알아먹음 (null safety)
class AutoMobile {
  // 클래스에 정의한 속성들을 "멤버변수"라고 함
  String? carMaker;
  int? price;
  String? color;
  int? wheelNumber;

  // constructor(생성자) 만들기
  // 멤버변수와 생성자 인자값의 변수명을 구분짓기 위해 this.을 추가
  AutoMobile(this.carMaker, this.price, this.color, this.wheelNumber);
}

void main() {
  // 메인 메소드에서 인스턴스 생성
  // 생성자 내에 값을 넣는다 (테슬라, 2000, 화이트, 4)
  AutoMobile a1 = AutoMobile("Tesla", 2000, "White", 4);
  print(a1.carMaker);

  // 새로운 인스턴스 만들기
  AutoMobile a2 = AutoMobile("Hyundai", 5000, "Genesis", 4);
  print(a2.carMaker);

  // 이로써 하나의 클래스에서 차별화된 두 개의 인스턴스를 생성
}
