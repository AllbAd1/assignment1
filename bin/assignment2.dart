void main() {
  // ignore: unused_local_variable
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  Map<String, int> clothes = {'티셔츠': 10000, '바지': 8000, '모자': 4000};

  int total = 0;
  int discount = 0;
  print('필수 문제 2번');
  for (var item in cart) {
    total += clothes[item] ?? 0;
  }
  print('장바구니에 $total 원어치를 담으셨네요!');
  if (total >= 20000) {
    double discount = total / 10;
    print('할인금액 : ${discount.toInt()} 원');
    double totaldiscount = total - discount;
    print('최종적으로 결제하실 금액은 ${totaldiscount.toInt()} 입니다!');
  }
}
