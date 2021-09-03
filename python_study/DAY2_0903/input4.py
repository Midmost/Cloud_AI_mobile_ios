# 튜플 및 리스트 입력
string = input("(1,2) 처럼 입력하시오")
print(string, type(string))         #input은 str로 반환

string = eval(input("(1,2) 처럼입력하시오"))
print(string, type(string))         #eval은 tuple로 반환

string = input("[1,2,3,4,5,6] 처럼 입력하시오")
print(string, type(string))         #input은 str로 반환

string = eval(input("[1,2,3,4,5,6] 처럼 입력하시오"))
print(string, type(string))         #eval은 list로 반환