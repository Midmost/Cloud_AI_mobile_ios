#합성

class Dron:
    def __init__(self, kind):
        self.kind = kind

    def fly(self):
        print("드론이 날아 오릅니다")

# 객체합성
class Tesla():
    def __init__(self, dron_kind=''):
        if dron_kind:
            self.dron = Dron(dron_kind)
        else:
            self.dron = None
        
    def get_dron(self, dron_kind):
        self.dron = Dron(dron_kind)

    def startflying(self):
        if self.dron:
            self.dron.fly()
        else:
            print("thaer's no dron")

#실행

t1 = Tesla('Mavic Air 2')
print(t1.dron.kind)
t1.startflying()

t2 = Tesla()
t2.startflying()
t2.get_dron(t1)
t2.startflying()