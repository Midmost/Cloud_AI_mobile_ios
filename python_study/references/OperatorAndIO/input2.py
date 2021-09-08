# 표준 정수 입력
data = input("정수를 입력하시오 : ")
print(data, type(data))
#print(data, type(data), data + 1) #에러
# 문자열과 정수를 +(더하기)할 수 없습니다.

data = eval(input("정수를 입력하시오 : "))
print(data, type(data), data + 1)

data = int(input("정수를 입력하시오 : "))
print(data, type(data), data + 1)

data = int(input("2진수를 입력하시오 : "), 2)
print(data, type(data), data + 1)

data = int(input("8진수를 입력하시오 : "), 8)
print(data, type(data), data + 1)

data = int(input("10진수를 입력하시오 : "), 10)
print(data, type(data), data + 1)

data = int(input("16진수를 입력하시오 : "), 16)
print(data, type(data), data + 1)

