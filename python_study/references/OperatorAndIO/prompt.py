from sys import argv

script, user_name = argv
prompt = '> '

print(f"안녕 {user_name}, 나는 {script} 스크립트야.")
print("질문 몇 가지 해도 되지.")
print(f"{user_name}, 나 좋아?")
likes = input(prompt)

print(f"{user_name}, 어디 사니?")
lives = input(prompt)

print("어떤 컴퓨터 가지고 있어?")
computer = input(prompt)

print(f"""
좋아, 날 좋아하냐는 물음에 {likes}라고 대답했지.
넌 {lives}에 사는 구나. 
어딘지 잘 모르겠다.
{computer} 컴퓨터를 가졌다니!  멋진걸.
""")
#실행 : python prompt.py steelflea
