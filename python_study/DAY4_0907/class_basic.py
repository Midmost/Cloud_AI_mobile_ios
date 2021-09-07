class Fruit:
    def __init__(self):
        self.fruit = "난 망고가 좋으데..."

    def get_apple(self):
        print("사과 한 상자를 배송했습니다")

myfruit = Fruit()
myfruit.get_apple()
print(myfruit.fruit)
yourfruit = Fruit()
yourfruit.get_apple()