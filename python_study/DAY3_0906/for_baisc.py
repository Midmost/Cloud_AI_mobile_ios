#for in 반복문
the_count = [1,2,3,4,5]
fruits = ['사과','오렌지', '배','살구']
change = [1,'십원', 2, '백원', 3, '오백원']

#리스트를 사용하는 for-in문
for number in the_count:
    print(f"이번 회수 숫자는 {number}")

# 앞서와 동일
for fruit in fruits:
    print(f"과일종료: {fruit}")

#다른 데이터 형식이 혼합된 리스트
for i in change:
    print(f"받은돈: {i}")