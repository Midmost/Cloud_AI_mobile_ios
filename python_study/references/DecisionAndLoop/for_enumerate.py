#enumerate
#기본 tuple 반환
e = [1, 5, 7, 33, 39, 52]
for t in enumerate(e):
    print(t)

#활용
for i, v in enumerate(e):
    print("인덱스 : {}, 값: {}".format(i,v))

