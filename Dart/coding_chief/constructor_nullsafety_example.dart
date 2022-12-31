// Person 이라는 클래스 만들기
// 4명의 인스턴스 생성
// 4명의 각각 다른 이름을 출력하기

class Person {
  // 클래스의 객체 정의
  String? name;
  int? height;
  String? sex;

  // 생성자 만들기
  Person(this.name, this.height, this.sex);
}

void main() {
  Person a1 = Person('Eden', 10, 'male');
  Person a2 = Person('Jade', 5, 'female');
  Person a3 = Person('Mimi', 4, 'female');

  print(a1.name);
  print(a2.name);
  print(a3.name);
}
