#함수와 변수...
def cheese_and_crackers(cheese_count, boxes_of_crackers):
    print(f"치즈가 {cheese_count}개나 있어요!")
    print(f"크래커가 {boxes_of_crackers}상자나 있어요!")
    print("파티를 열기에 충분하네요!")

print("함수 바로 값넣기")
cheese_and_crackers(20,30)

print("아니면 변수를 넣을까나?")
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese,amount_of_crackers)

print("계산식을 인자로 넣쟈")
cheese_and_crackers(10+20, 5+6)

print("변수와 식을 조합")
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

#가독성, 효율성 다 잡을 수는 없고 
#일단 1차로 가독성을 중심으로 연습하자 
