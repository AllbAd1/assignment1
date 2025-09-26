void main() {
  // ignore: unused_local_variable
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  Map<String, int> clothes = {'티셔츠': 10000, '바지': 8000, '모자': 4000};

  int total = 0; //전체 금액
  int discount = 0; //할인 금액
  print('필수 문제 2번');
  for (var item in cart) { //아이템 변수에 리스트 카트의 값을 
    total += clothes[item] ?? 0; //토탈 금액에 맵에 있는 해당하는 값을 가져와서 계속 더한다
  }
  print('장바구니에 $total 원어치를 담으셨네요!');
  if (total >= 20000) { //만약 토탈값이 2만원보다 같거나 클때
    double discount = total / 10; // 10% 계산식 
    print('할인금액 : ${discount.toInt()} 원'); //할인 금액을 소수점을 제거 하는 함수를 사용해서 출력
    double totaldiscount = total - discount; //전체 가격과 할인 가격을 빼서
    print('최종적으로 결제하실 금액은 ${totaldiscount.toInt()} 입니다!'); //최종적으로 얼마를 계산해야하는 출력
  }
}
