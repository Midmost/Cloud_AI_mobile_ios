# 중첩 if 문

door = "1"

if door == "1":
    print("선택하세요?")
    print("1. 땅")
    print("2. 하늘")
    bear = input(">")

    if bear == "1":
        print("곰이 당신을 태웠습니다. 잘 했어요!")
    elif bear == "2":
        print("곰이 당신을 들이받아 하늘로 보냈네요 저런!")
    else:
        print(f"음 {bear}은 선택할 수 없어요")

elif door == "2":
    print("토끼굴로 들어왔어요")
    print("1. 모자를 씁니다.")
    print("2. 노란 자켓을 입습니다.")
    print("3. 토끼를 따라 갑니다")
    oz = input(">")

    if oz == "1" or oz == "2":
        print("이상한 나라의 일원이 되었습니다. 잘했습니다!")
    else:
        print("다시 살던 곳으로 갑니다. 기회를 잃었습니다!")
else:
    print("이해력이 떨어지는 군요!")