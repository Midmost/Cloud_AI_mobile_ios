#기본 if 문
people = 20
cats = 30
dogs = 15
#관계 연산
if people < cats:
    print("고양이가 지배하는 세상")

if people > cats:
    print("사람이 지배하는 세상")

if people < dogs:
    print("세상은 개의 침으로 침몰!")

#문자열 조건
if bool("고양이"):
    print("문자열 값이 있으면 True")

if "멍멍이":
    print("문자열 값이 있으면 True")

if "":
    print("문자열 값이 빈값이면 False, 실행안됨")

