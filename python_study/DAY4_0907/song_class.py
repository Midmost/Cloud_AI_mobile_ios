class Song(object):
    def __init__(self, lyrics):
        self.lyrics = lyrics

    def sing_a_song(self):
        for line in self.lyrics:
            print(line)

#모듈처럼 쓰는거 

# 빈 객체를 찾아서 전달한 다음에 초기화하고 
#초기화된 변수를 class_call.py에서 불러서 다시 쓰는 거

#object가 초기값을 사용하는데 사용된다. 


#모든 자료형의 최상위 타입이 오브젝트


# Q. inheritance와 iClonable의 차이는? 이게 인터페이스랑 차이는 뭐지? 
# 만약 TV라는 걸 만든다고 하면 종류가 스마트티비도 있고 일반 TV도 있는데
# 이렇게 공통된 거를 뽑아서 주는 거를 inheritance라고 한다. 
# 이 때 스마트티비는 최상위객체(TV)를 상속받아서 사용되는 object라고 할 수 있다. 
# 함수인 def는 클래스 안에서 부를 때 메서드라고 하는거야(객체지향언어에 한해서)
# self는 객체를 만들 때 객체 인스턴스(그 자체)를 가리킨다. 
# composition은 자동차라는 클래스를 생각했을 때 많은 부품이 필요할거 아닙니까? 이 때 엔진클래스가 있다고 할 때
# 자동차 클래스와 엔진 클래스와의 관계를 composition이라고 한다. (클래스가 서로 포함(부품)될 때) 
# 한마디로 교집합이 inheritance, 합집합이 composition
# attribute vs properties
# attr는 클래스가 가진 변수들(전역변수, 메서드 밖에 있는 변수들 있쟈나 이거 c#에서는 필드라고 부르는거)
# inheritance는 다른 말로 is a 관계라고 할 수 있어 연어 is a 물고기
# composition 이 has a 관계구먼 연어 has a 지느러미 