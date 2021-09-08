# 표준 실수 입력
data = input("실수를 입력하시오 : ")
print(data, type(data))
# 에러 문자열과 실수를 +(더하기)할 수 없습니다.
# print(data, type(data), data + 1.2)

data = eval(input("실수를 입력하시오 : "))
print(data, type(data), data + 1.2)

data = float(input("정수를 입력하시오 : "))
print(data, type(data), data + 1.2)

