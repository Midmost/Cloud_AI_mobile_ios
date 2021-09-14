#if ~ elif ~ else 문
people = 30
cars = 40
trucks = 15

if cars > people:
    print("차를 타야 합니다.")
elif cars < people:
    print("모두 다 차를 탈 수 없습니다.")
else:
    print("결정하지 못하겠습니다.")

if trucks > cars:
    print("트럭이 너무 많아요.")
elif trucks < cars:
    print("트럭을 더 구매해야 할까요.")
else:
    print("여전히 결정이 어렵네요.")


if people > trucks:
    print("좋아요, 트럭을 구매합시다.")
else:
    print("좋습니다. 집에 머무르죠!")



