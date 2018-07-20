def olympic(choiceValue):
    print("시작 : 사용자 정의 함수")
    number = {1:'컬링', 2:'피겨 스케이팅', 3:'알파인 스키', 4:'봅슬레이', 5:'쇼트트랙', 6:"선택안함"}
    if choiceValue == 1:
        prt(choiceValue)
        return (number.get(choiceValue))
    elif choiceValue == 2:
        prt(choiceValue)
        return (number.get(choiceValue))
    elif choiceValue == 3:
        prt(choiceValue)
        return (number.get(choiceValue))
    elif choiceValue == 4:
        prt(choiceValue)
        return (number.get(choiceValue))
    elif choiceValue == 5:
        prt(choiceValue)
        return (number.get(choiceValue))
    elif choiceValue == 6:
        prt(choiceValue)
        return (number.get(choiceValue))
    else:
        prt(choiceValue)
        return "유효숫자 입력 오류!"
def prt(str):
    print("메인에서 입력한 값 : %d \n" %str)
    print("종료 : 사용자 정의 함수 \n")

print("선택할 종목은 다음과 같습니다.")
number = """
    1. 컬링
    2. 피겨 스케이팅
    3. 알파인 스키
    4. 봅슬레이
    5. 쇼트트랙
    6. 그냥 종료
    """
print(number)
su = int(input("선택(1~6) : "))
print("사용자 정의 함수를 호출합니다.")
value = olympic(su)
print("종목 : %s \n" %value)
