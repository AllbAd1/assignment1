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
  for (int winnum in winnerNumber) {
    for (int mynum in myNumber) {
      if (winnum == mynum) {
        matchcount++;
        matchNumber.add(mynum);
      }
    }
  }
  //print('맞춘 번호 : $matchNumber');
  //print('맞춘 갯수 : $matchcount');
  if (matchcount >= 5) {
    print('당첨여부 : 1등');
  } else if (matchcount == 4) {
    print('당첨여부 : 2등');
  } else if (matchcount == 3) {
    print('당첨여부 : 3등');
  } else {
    print('당첨 여부 : 당첨 실패!');
  }
}
