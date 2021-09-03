from sys import argv

script, user_name = argv
prompt = '>'

print(f"안녕 {user_name}, 나는 {script} 스크립트야")
print("질문 몇 가지 해도 되지?")
print(f"{user_name}, 나 좋아?")
likes = input(prompt)

print(f"{user_name}, 어디 살아?")
lives = input(prompt)

print("너 어떤 컴퓨터 가지고 있어?")
computer = input(prompt)

print(f"""
좋아, 날 좋아햐는 물음에 {likes}라고 대답했지!
넌 {lives}에 사는 구나. 
{computer}를 가지고 있다니 멋진걸!
"""
)

# 스크립트 실행 시 입력 -argv
# 스크립트 실행 중 입력 -input

#python script.py arg1 arg2 arg3