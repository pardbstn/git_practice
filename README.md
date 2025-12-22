12/24 과제

1️⃣ main.dart

앱의 시작점
→ TasksApp 실행

2️⃣ TasksApp

프로젝트 이름: tasks

라이트 / 다크 테마 지원

첫 화면을 HomePage로 지정

3️⃣ ToDoEntity

To Do 하나를 표현하는 데이터 클래스

title        // 할 일 제목
description  // 세부 내용 (선택)
isFavorite   // 즐겨찾기 여부
isDone       // 완료 여부


copyWith()로 기존 ToDo를 수정할 수 있음

4️⃣ HomePage

메인 화면

AppBar 제목: 수강생 이름`s Tasks

ToDo 리스트 관리

ToDo가 없으면 NoToDo 위젯 표시

있으면 ToDoView를 ListView로 출력

+ 버튼 → BottomSheet 열기

5️⃣ NoToDo

할 일이 없을 때 보여주는 화면

margin / padding 20

radius 12

이미지 + 텍스트 구성

6️⃣ AddToDoBottomSheet

ToDo 추가 화면

자동 포커스 → 키보드 자동 표시

제목 입력 후 엔터 = 저장

즐겨찾기 아이콘 토글

설명 아이콘 클릭 시 description 입력창 표시

저장 시 ToDoEntity 반환 후 닫힘

7️⃣ ToDoView

리스트에 보이는 ToDo 한 줄

완료 아이콘 클릭 → Done 상태 변경

즐겨찾기 아이콘 클릭 → Favorite 변경

제목 클릭 → 상세 페이지 이동

상태 변경은 외부 함수로 처리

8️⃣ ToDoDetailPage

ToDo 상세 화면

뒤로가기 버튼

즐겨찾기 변경 가능

변경 사항은 이전 화면에도 반영

9️⃣ FloatingActionButton

키보드가 올라와도 위치 고정

새 ToDo 추가 역할
