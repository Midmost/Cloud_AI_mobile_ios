#try ~ finally 구문
try:
    f = open('finallywith.txt', mode='wt', encoding='utf-8')
    f.write('파이썬으로 파일을 작성하고 있습니다.\n')
    f.write('try~finally문을 사용합니다.\n')
finally:
    f.write('finally 절의 close()는 무조건 실행 됩니다.')
    f.close()

#with 블록
with open('with.txt', mode='wt', encoding='utf-8') as f:
    f.write('파이썬으로 파일을 작성하고 있습니다.\n')
    f.write('with 블록을 사용합니다.\n')
    f.write('close()는 자동으로 호출됩니다')

    