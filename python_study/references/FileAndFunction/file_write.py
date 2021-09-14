#파일 쓰기
wf=open('sample_write.txt', 'wt', encoding='utf-8')
help(wf)

wf.write('파이썬으로 파일을 작성하고 있습니다.\n')
wf.write('write()호출 후 반환 숫자는 글자 수 입니다.\n')
wf.writelines(['Writeline()은 없습니다.\n','writelines()는 리스트 형식을 받습니다.\n'])
wf.close()

#파일 내용 추가하기
af=open('sample_write.txt', mode='at', encoding='utf-8')
af.writelines(['-------------------\n','파일을 추가 모드로 열었습니다.\n','덧 붙인 내용입니다.\n'])
af.close()

