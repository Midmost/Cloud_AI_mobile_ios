states = {
    '충청북도': '충북',
    '경상북도': '경북',
    '전라남도': '전남',
    '경기도' : '경기',
    '강원도' : '강원'
}

cities = {
    '전남': '광주',
    '강원': '원주',
    '경북': '대구'
}

cities['경기'] = '용인'
cities['충북'] = '충주'

print('-'*10)
print("경기도에는", cities['경기'], "이 있습니다.")

print('-'* 10)
print("강원도의 약어는", states['강원도'])
print("경상북도의 약어는", states['경상북도'])

print('-'* 10)
print("강원도는 ", cities[states['강원도']], "가 있습니다.")


print('-'*10)
for state, abbrev in list(states.items()): # for문에서 반복을 하려면 순서가 필요해서 리스트로 변환
    print(f"{state}의 약어는 {abbrev}입니다.")

for abbrev, city in list(cities.items()):
    print(f"{abbrev}에는 {city}시가 있습니다")

print('-'* 10)
for state, abbrev in list(states.items()):
    print(f"{state}의 약어는 {abbrev}이고 {cities[abbrev]}시가 있습니다")

print('-'* 10)
state = states.get('제주도')

if not state:
    print("제주는 없어")

city = cities.get('제주', '없습니다.')
print(f"제주의 도시는 {city}")