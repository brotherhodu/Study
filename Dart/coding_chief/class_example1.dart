// 1-1. class 생성하기
class HolidayCafe {
  String menu = "latte";
  int price = 3000;

  void NewMenu() {
    print("아메리카노 출시!");
  }
}

// 1-2. 인스턴스 생성해서 속성과 기능 출력하기
void main() {
  HolidayCafe a1 = HolidayCafe();
  print(a1.menu);
  print(a1.price);
  a1.NewMenu();
}
