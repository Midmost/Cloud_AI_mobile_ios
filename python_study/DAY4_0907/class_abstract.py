#1
from abc import *

#2
class AbstrctCountry(metaclass=ABCMeta):
    name= 'arnrrkaud'
    population = '인구'
    capital = '수도'

    def show(self):
        print('국가 클래스의 메소드입니다')

#3
    @abstractclassmethod
    def show_capital(self):
        print("국가의 수도는?")

class korea(AbstrctCountry):

    def __init__(self, name, population, capital) -> None:
        self.name = name
        self.population = population
        self.capital = capital

    def show_name(self):
        print('국가 이름은 : ', self.name)

    #추상 메서드 구현
    def show_capital(self):
        super().show_capital()
        print(self.capital)

## play
a = korea("대한민국", 52000000, "서울")
a.show_capital()