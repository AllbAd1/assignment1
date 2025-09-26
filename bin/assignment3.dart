import 'dart:math';

void main() {
  print('도전 문제');

  List<int> winnerNumber = [9, 19, 29, 35, 37, 38];
  print('당첨 번호 $winnerNumber');

  var random = Random();
  //int result = random.nextInt(45) + 1;

  List<int> myNumber = [];
  /*for (int i = 0; i < 6; i++) {
    var random = Random();
    int result = random.nextInt(45) + 1;
    myNumber.add(result);
  }*/

  while (myNumber.length < 6) {
    int result = random.nextInt(45) + 1;
    if (!myNumber.contains(result)) {
      myNumber.add(result);
    }
  }
  print('발급한 로또 번호 $myNumber');

  int matchcount = 0;
  List<int> matchNumber = [];

}
