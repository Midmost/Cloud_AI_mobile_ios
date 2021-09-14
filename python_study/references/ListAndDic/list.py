ten_things = "사과 오렌지 까마귀 전화 빛 설탕"

print("잠깐, 아직 목록에 10가지가 들어있지 않네요. 자, 고쳐봅시다.")

stuff = ten_things.split(' ')
more_stuff = ["낮", "밤", "노래", "부메랑", "옥수수", "바나나", "소녀", "소년"]

while len(stuff) != 10:
    next_one = more_stuff.pop()
    print("추가: ", next_one)
    stuff.append(next_one)
    print(f"이제 {len(stuff)}개의 항목이 있습니다.")

print("한 번 볼까요: ", stuff)

print("stuff를 잠깐 가지고 놀아봅시다.")

print(stuff[1])
print(stuff[-1]) # whoa! fancy
print(stuff.pop())
print(' '.join(stuff)) # what? cool!
print('#'.join(stuff[3:5])) # super stellar!