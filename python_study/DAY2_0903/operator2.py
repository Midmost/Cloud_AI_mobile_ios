# 비교 연산 해볼까아아앙
x = 10
y = 12
print(x>y)
print(x<y)
print(x != y)
print(x = y)

# 논리연산
# 꿀팁: and 연산 할 때는 false가 앞에 오게 하자 
#       or 연산 할 때는 true가 앞에 오게 하자           뒤에거까지 연산 안하고도 결과가 나올 수 있으면 그게 좋은코드!
xx = True
yy = False

print("xx and yy", yy and xx)
print("xx or yy", xx or yy)
print("not xx is", not xx )

#식별연산
x1 = 5
y1 = 5
x2 = "hello"
y2 = "hello"
x3 = [1,2,3]
y3 = [1,2,3]
print(x1 is not y1)
print(x2 is y2)
print(x3 is y3)