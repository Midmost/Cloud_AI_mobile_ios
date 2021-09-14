#부모 클래스, Car
class Car:
    def __init__(self, fuel, engine):
        self.fuel = fuel
        self.engine = engine

    def refuel(self):
        print('주유 중 입니다')

    def __str__(self):
        return '나는 자동차입니다. '

# 부모클래스 Car를 상속받은 Tesla 클래스 정의
class Tesla(Car):
    def __init__(self, fuel, engine):
        self.fuel = fuel
        self.engine = engine

    # 오버라이딩 - 같은 함수는 자식의 함수가 우선
    def refuel(self): 
        print('충전 중 입니다')

    def __str__(self):
        return super(Tesla, self).__str__() + '바로, 최고의 전기차죠!'

