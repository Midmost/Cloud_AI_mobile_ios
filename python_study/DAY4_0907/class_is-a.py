class Car:
    def __init__(self, fuel, engine):
        self.fuel = fuel
        self.engine = engine

    def refuel(self):
        print("주유중입니다")

    def __str__(self):
        return '나는 자동차야'

# 부모클래스 car를 상속받은 Tesla 클래스 정의
class Tesla(Car):
    def __init__(self, fuel, engine):
        self.fuel = fuel
        self.engine = engine

    #오버라이딩 - 같은 함수는 자식의 함수가 우선
    def refuel(self):
        print('충전 중 입니다')
    
    def __str__(self):
        return super(Tesla, self).__str__() + '바로, 최고의 전기차죠!'

# 여기까지 shift + enter

b = Tesla('electronic','motor')
b.refuel()
b.__str__()