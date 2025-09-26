import 'dart:math';

void main() {
  print('도전 문제');

  List<int> winnerNumber = [9, 19, 29, 35, 37, 38];  //당첨번호 
  print('당첨 번호 $winnerNumber');

  var random = Random(); //랜덤값 불러오기
  //int result = random.nextInt(45) + 1;

  List<int> myNumber = []; //랜덤값을 저장할 리스트
  /*for (int i = 0; i < 6; i++) {
    var random = Random();
    int result = random.nextInt(45) + 1;
    myNumber.add(result);
  }*/

  while (myNumber.length < 6) { //마이넘버의 글자수가 6개가 될때 까지
    int result = random.nextInt(45) + 1; //랜덤수를 만들어주고 1~45
    if (!myNumber.contains(result)) { //마이넘버의 같은값이 없을때 
      myNumber.add(result); //마이넘버 리스트에 랜덤수 추가
    }
  }
  print('발급한 로또 번호 $myNumber');

  int matchcount = 0; //맞춘 값을 저장할 변수 선언
  List<int> matchNumber = []; //맞춘 랜덤값을 저장할 리스트 선언
  for (int winnum in winnerNumber) {  //맞춘 값을 저장하기 위해 리스트에서 하나씩 가져와서
    for (int mynum in myNumber) { //랜덤 값을 저장하고 리스트에서 하나씩 가져와서
      if (winnum == mynum) {  //만약 값끼리 값이 같을때 
        matchcount++; //맞은 값을 카운트 1업
        matchNumber.add(mynum); //맞은 값을 리스트에 넣어주고
      }
    }
  }
  print('맞춘 번호 : $matchNumber'); 
  print('맞춘 갯수 : $matchcount');
  if (matchcount >= 5) { //만약 5개 맞았다면
    print('당첨여부 : 1등');
  } else if (matchcount == 4) { //만약 4개 맞았다면
    print('당첨여부 : 2등');
  } else if (matchcount == 3) { //만약 3개 맞았다면
    print('당첨여부 : 3등');
  } else {  //2개 이하로 맞았다면
    print('당첨 여부 : 당첨 실패!');
  }
  myNumber.clear(); //기존 발급한 로또 번호 초기화 
  print('현재 발급한 로또 번호 : $myNumber');
}
