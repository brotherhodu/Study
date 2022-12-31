// 2-1. class에 기능(5+5 값 반환) 정의하기
class add {
  void add_num() {
    print(5 + 5);
  }
}

// 2-2. 인스턴스로 만들어서 출력하기
void main() {
  add n1 = add();
  n1.add_num();
}
