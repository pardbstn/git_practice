void main() {
  // 상품 가격 정보
  Map<String, int> prices = {
    '티셔츠': 10000,
    '바지': 8000,
    '모자': 4000,
  };

  // 장바구니 목록
  List<String> cart = ['티셔츠', '바지', '모자', '티셔츠', '바지'];

  // 1번: 총 금액 계산
  int total = 0;
  for (String item in cart) {
    total += prices[item]!;
  }

  print('장바구니에 $total원 어치를 담으셨네요!');

  // 2번: 할인 계산 (10%)
  int discount = 0;
  if (total > 20000) {
    discount = (total * 0.1).toInt(); 
    print('할인 금액 : $discount원');
  }

  // 3번: 최종 결제 금액 계산
  int finalPrice = total - discount;

  print('최종 결제 금액은 ${finalPrice}원입니다!');
}
