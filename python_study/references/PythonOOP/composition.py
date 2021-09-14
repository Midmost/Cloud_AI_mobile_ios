class CompTarget(object):

    def override(self):
        print("TARGET override()")

    def implicit(self):
        print("TARGET implicit()")

    def altered(self):
        print("TARGET altered()")

class Owner(object):

    def __init__(self):
        self.comptarget = CompTarget()

    def implicit(self):
        self.comptarget.implicit()
    
    def override(self):
        print("OWNER override()")

    def altered(self):
        print("OWNER, BEFORE TARGET altered()")
        self.comptarget.altered()
        print("OWNER, AFTER TARGET altered()")

owner = Owner()

owner.implicit()
owner.override()
owner.altered()
