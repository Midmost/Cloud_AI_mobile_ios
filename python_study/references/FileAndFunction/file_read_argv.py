#실행 인자와 입력 함수 조합
from sys import argv

script, filename = argv

txt = open(filename, encoding='utf-8')
print(f"선택한 파일: {filename}")
print(txt.read())

print("파일 이름을 다시 한 번 입력하세요.")
file_again = input("> ")

txt_again = open(file_again, encoding='utf-8')
print(txt_again.read())

