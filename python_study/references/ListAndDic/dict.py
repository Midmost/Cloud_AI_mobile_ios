# 도 이름의 약어 매핑 만들기
states = {
    '충청북도': '충북',
    '경상북도': '경북',
    '전라남도': '전남',
    '경기도': '경기',
    '강원도': '강원'
}

# 도와 도시의 기본 집합 만들기
cities = {
    '전남': '광주',
    '강원': '원주',
    '경북': '대구'
}

# 도시를 몇 개 더 추가
cities['경기'] = '용인'
cities['충북'] = '충주'

# 몇개의 도시 출력
print('-' * 10)
print("경기도에는", cities['경기'],"이 있습니다.")
print("충청북도에는", cities['충북'],"가 있습니다.")

# 몇 개의 도 출력
print('-' * 10)
print("강원도의 약어는 ", states['강원도'])
print("경상북도의 약어는 ", states['경상북도'])

# 도 이름 사전과 도시 이름 사전을 차례로 출력
print('-' * 10)
print("강원도는", cities[states['강원도']], "가 있습니다.")
print("경상북도는", cities[states['경상북도']], "가 있습니다.")

# 도 이름 약어 모두 출력
print('-' * 10)
for state, abbrev in list(states.items()):
    print(f"{state}의 약어는 {abbrev} 입니다")

# 각 도의 모든 도시 출력
print('-' * 10)
for abbrev, city in list(cities.items()):
    print(f"{abbrev}에는 {city}시가 있습니다.")

# 이제 동시에 두 가지 모두 실행
print('-' * 10)
for state, abbrev in list(states.items()):
    print(f"{state}의 약어는 {abbrev}이고 {cities[abbrev]}시가 있습니다")

print('-' * 10)
# 없는 도의 약어를 안전하게 얻는다. 
state = states.get('제주도')

if not state:
    print("미안하지만, 제주도는 없습니다.")

# 기본 값으로 도시 조회
city = cities.get('제주', '없습니다,')
print(f"제주의 도시는 {city}")

