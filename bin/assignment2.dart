void main() {
  // ignore: unused_local_variable
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  Map<String, int> clothes = {'티셔츠': 10000, '바지': 8000, '모자': 4000};
  print(clothes['티셔츠']);

  int total = 0;
  int discount = 0;

  for (var item in cart) {
    total += clothes[item] ?? 0;
  }
  print('장바구니에 $total원어치를 담으셨네요');
  if (total >= 20000) {
    print('2만원 이상 구매');
    
  }
}
