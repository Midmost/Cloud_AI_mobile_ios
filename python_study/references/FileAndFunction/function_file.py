from sys import argv

script, input_file = argv

def print_all(f):
    print(f.read())

def rewind(f):
    f.seek(0)

def print_a_line(line_count, f):
    print(line_count, f.readline())

current_file = open(input_file, encoding='utf-8')

print("파일 전체를 출력합니다.\n")
print_all(current_file)

print("이번엔 테이프처럼 되감아 봅니다")
rewind(current_file)

print("세 줄을 출력해 봅니다.")

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_file.close()
