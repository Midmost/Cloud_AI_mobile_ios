from sys import argv
#f라는 객체가 가지고 있는 비헤이비어(함수)를 호출하고 싶을 때 dot notation을 쓴다
#f.readline()

script, input_file = argv

def print_all(f):
    print(f.read())

def rewind(f):
    f.seek(0)

def print_a_line(line_count,f):
    print(line_count, f.readline())

current_file = open(input_file, encoding='utf-8')

print("파일 전체 출력\n")
print_all(current_file)

print("이번엔 테이프처럼 되감아보쟈")
rewind(current_file)

print("세 줄을 출력해 봅니다.")

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_file.close()

# python3 .\funcion_file.py sample.txt
# python3 function_file.py ../DAY2_0903/sample.txt
# ../ 가 이전경로를 의미

    