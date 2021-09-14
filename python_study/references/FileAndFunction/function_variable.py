#함수와 변수
def cheese_and_crackers(cheese_count, boxes_of_crackers):
    print(f"치즈가 {cheese_count}개나 있어요!")
    print(f"크래커가 {boxes_of_crackers}상자나 있어요!")
    print("파티를 열기에 충분하네요!")
    print("담요 한 장은 가져와요.\n")

print("함수에 값을 바로 넣을 수 있어요.")
cheese_and_crackers(20, 30)

print("아니면 변수를 넣을수도 있어요.")
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

print("계산식을 인자로 넣을수도 있어요.")
cheese_and_crackers(10 + 20, 5 + 6)

print("변수와 식을 조합할 수도 있습니다.")
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

