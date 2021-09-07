i = 0

numbers = []

while i < 6:
    print(f"반복문 상단에서 isms {i}")
    numbers.append(i)

    i = i + i
    print("이제 숫자는: ", numbers)
    print(f"반복문 하단에서 i는 {i}")


print("숫자: ")

for num in numbers:
    print(num)

    # 무한반복 걸렸을 때 ctrl c를 누르자
