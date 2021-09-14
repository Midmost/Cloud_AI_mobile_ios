#함수의 반환
def add(a, b):
    print(f"더하기 {a} + {b}")
    return a + b

def subtract(a, b):
    print(f"빼기 {a} - {b}")
    return a - b

def multiply(a, b):
    print(f"곱하기 {a} * {b}")
    return a * b

def divide(a, b):
    print(f"나누기 {a} / {b}")
    return a / b

def even_or_odd(n):
    if n % 2 == 0:
        print("짝수")
        return
    print("홀수")

print("함수로만 계산해봅니다.")

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

even_or_odd(3)
even_or_odd(4)

print(f"나이: {age}, 키: {height}, 몸무게: {weight}, IQ: {iq}")



