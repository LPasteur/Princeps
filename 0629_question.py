def get_question():
    return ["비온뒤 하늘색은?","파란색","곰돌이 푸가 넘어지면?","쿵푸",
    "개미네집 주소?","허리도 가늘면 부러지리"]

def check_question(qna):
    for i in range(3):
        question = qna[2*i]
        answer = qna[2*i+1]
        given_answer = input(question)
        if answer == given_answer:
            print("정답")
            # return True
        else:
            print("오답, 정답은:",answer)
            # return False

# def run_test(questions):
#     if len(questions) == 0:
#         print("질문이 주어지지 않았습니다.")
#         return
#     index = 0
#     right = 0

check_question(get_question())
