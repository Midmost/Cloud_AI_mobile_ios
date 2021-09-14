from sys import argv
from os.path import exists

script, from_file, to_file = argv
print(f"{from_file}에서 to {to_file}로 복사합니다.")

in_file = open(from_file, encoding='utf-8')
indata = in_file.read()
print(f"입력 파일의 길이는 {len(indata)}바이트 입니다.")

print(f"대상 파일이 존재여부? {exists(to_file)}")
print("계속 하려면 ENTER, 중지하려면 CTRL-C를 입력하세요.")
input()

out_file = open(to_file, 'w', encoding='utf-8')
out_file.write(indata)
print("모든 작업이 끝났습니다.")

out_file.close()
in_file.close()

#python file_copy.py sample.txt copy.txt