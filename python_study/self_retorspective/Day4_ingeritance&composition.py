#우선 계산기를 함수로 만든다고 하면

result = 0

def add(num):
    global result
    result += num
    return result

add(5)
add = add(2)
print('add: ', add)

result2 = 0

def add2(num):
    global result2
    result2 += num
    return result2

add2(5)
add2 = add2(5)
print('add2: ', add2)

result3 = 0

def add3(num):
    global result3
    result3 += num
    return result3

add3(5)
add3 = add3(7)
print('add3: ', add3)

result4 = 0
def add4(num):
    global result4
    result4 += num
    return result4

add4(5)
add4 = add4(1)
print('add4: ', add4)


#위와 같이 함수를 이용해서 쓴 코드를 더 짧게 쓰려면? 클래스를 이용하자
class Add_cal:
    def __init__(self):
        self.result = 0

    def add(self, num):
        self.result += num
        return self.result

add_cal = Add_cal()
add_cal2 = Add_cal()
add_cal3 = Add_cal()
add_cal4 = Add_cal()

add_cal.add(5)
add_cal = add_cal.add(2)

add_cal2.add(5)
add_cal2 = add_cal2.add(5)

add_cal3.add(5)
add_cal3 = add_cal3.add(7)

add_cal4.add(5)
add_cal4 = add_cal4.add(1)

print('-----class ------')
print('add: ', add_cal)
print('add2: ', add_cal2)
print('add3: ', add_cal3)
print('add4: ', add_cal4)
