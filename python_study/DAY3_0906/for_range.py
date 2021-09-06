# 빈 리스트로 시작해서 리스트 만들기
elements = []

# 0~5까지 세는 range 함수 사용
for i in range(0, 6):
    print(f"리스트에 {i}값을 추가합니다.")
    elements.append(i)

# 역시 출력 가능
for i in elements:
    print(f"원소 {i} 번째 값: {i}")

# range 값 출력하기
for i in range(10,20,3):
    print(i)

range(10,20,2)
list(range(10,20,2))
tuple(range(10,20,2))