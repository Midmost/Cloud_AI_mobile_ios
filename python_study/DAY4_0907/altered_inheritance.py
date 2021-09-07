class Parent(object):
    def altered(self):
            print("parent altered()")
class Child(Parent):
    def altered(self):
        print("child, before parent altered()")
        super(Child, self).altered()      # 변덕을 부리고 싶을 때 super를 쓴다 child거 쓰다가 갑자기 부모거 쓰고 싶엉! 하면
        print("child, after parent altered()")

dad = Parent()
son = Child()

dad.altered()
son.altered()