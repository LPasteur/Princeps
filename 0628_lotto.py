# 로또 복권번호를 출력하는 프로그램
import random

# 로또 번호 생성
def getNumber():
    number = random.sample(range(1,46),6)
    return number

# 로또 번호 출력 프로그램
def lotto_start():
    print("로또복권 추천번호입니다. \n")
    lotto = getNumber()
    lotto.sort()
    print(lotto)
    print("당첨을 기원드립니다.")

# 메인프로그램 소스 코드
print("◎로또복권 추천번호 출력 프로그램")
while True:
    choiceValue = input("로또번호 추천을 시작하겠습니까? (Y/N) : ")
    if choiceValue == 'Y' or choiceValue == 'y':
        lotto_start()
    elif choiceValue == 'N' or choiceValue == 'n':
        break
    else:
        print("알파벳 입력 오류입니다.")
        print("프로그램을 다시 시작합니다.")
        continue
print("프로그램을 종료합니다.")
