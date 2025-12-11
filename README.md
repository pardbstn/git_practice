12/12 과제


간단 요약

파일에서 학생 이름과 점수를 읽는다.

사용자가 학생 이름을 입력한다.

그 학생의 정보(이름 + 점수)를 보여준다.

그 내용을 result.txt에 저장한다.

코드 설명
1. Score 클래스

점수(score)만 저장하는 기본 클래스.

showInfo()로 점수를 출력함.

class Score {
  int score;
  Score(this.score);

  void showInfo() {
    print("점수: $score");
  }
}

2. StudentScore 클래스 (Score 상속)

Score 클래스를 이어받아 이름(name) 도 함께 저장.

showInfo()를 다시 정의해서 “이름 + 점수” 형태로 출력함.

class StudentScore extends Score {
  String name;

  StudentScore(this.name, int score) : super(score);

  @override
  void showInfo() {
    print("이름: $name, 점수: $score");
  }
}

3. students.txt에서 학생 데이터 읽기

파일을 한 줄씩 읽고

"이름,점수" 형식으로 나눠서 StudentScore 객체로 만들어 리스트에 넣음.

예:
students.txt 내용이

철수,80
영희,90


이면 각각 학생 객체가 만들어짐.

4. 결과 저장하기

내용(String)을 받아 파일(result.txt)에 저장함.

5. main() 실행 흐름

students.txt에서 학생 목록 불러오기

사용자에게 “어떤 학생을 조회할지” 물어봄

입력한 이름을 가진 학생을 리스트에서 찾음

학생 정보 출력

result.txt에 결과 저장
