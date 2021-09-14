#합성에 사용할 클래스
class Dron:
    def __init__(self, kind):
        self.kind = kind

    def fly(self):
        print('드론이 날아 오릅니다')

# 객체합성
class Tesla():
    def __init__(self, dron_kind=''):
        if dron_kind:
            # Dron 객체를 Tesla의 인스턴스 멤버로 할당
            self.dron = Dron(dron_kind) 
        else:
            #dron 인스턴스 멤버는 있지만 값은 없는 상태
            self.dron = None 

    def get_dron(self, dron_kind):
        self.dron = Dron(dron_kind)

    def startflying(self):
        if self.dron:
            self.dron.fly()
        else:
            print('차에 드론이 없습니다.')

 #실행
t1 = Tesla('Mavic Air 2')
print(t1.dron.kind)
t1.startflying()

t2 = Tesla()
t2.startflying()
t2.get_dron('MAVIC 2')
t2.startflying()           