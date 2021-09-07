# 모듈은 상속의 개념이 없댜ㅏ아아ㅏ 상속 따라해서 모듈에서 만든 게 합성이얌

class CompTarget(object):
    def override(self):
        print("Target override()")
    
    def implicit(self):
        print("Target implicit()")

    def altered(self):
        print("Target altered()")

class Owner(object):

    def __init__(self):
        self.comptarget = CompTarget()  # self.comptarget 부품 장착 3개 기능이 있어 implicit, override, altered

    def implicit(self):                 # 그 3개를 이제 불러오겠다~하기 위해 comptargetdml implicit을 self로 불러온거야(이게 합성으로 온거야)
        self.comptarget.implicit()

    def override(self):
        print("Owner override()")

    def altered(self):
        print("owner, before target altered()")
        self.comptarget.altered()
        print("owner, agter target altered()")

owner = Owner()

owner.implicit()
owner.override()
owner.altered()

# 부품으로 등록을 해야 합성을 쓸 수 있어( 함수로 만들라는 뜻)