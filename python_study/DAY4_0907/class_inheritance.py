class Country:
    
    name = '국가명'
    population = '인구'
    capital = '수도'

    def show(self):
        print('국가 클래스 메소드입니다.')


class Korea(Country):
    def __init__(self, name):
        self.name = name
    
    def show_name(self):
        print('국가 이름은 : ', self.name)

a = Korea('대한민국')
a.show()

a.show_name()
a.capital
a.name