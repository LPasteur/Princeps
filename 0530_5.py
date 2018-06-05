##리스트와 문자열로 티켓 구입여부를 판별하는 프로그램##
print(">>결제방법은 다음과 같이 수행합니다.")
print("a.현금결제:cash")
print("b.카드결제:card")
print("c.핸드폰결제:phone")

ticket=['cash','card','phone']
print(">>문자열을 입력 예시 --> space")
choiceValue=input(">>결제방법 문자열 입력:")

if choiceValue in ticket:
    print(">>[%s]결제방법을 선택하였습니다." %choiceValue)
    print(">>동계올림픽 경기티켓 구입가능")
else:
    print(">>입력한 [%s]은(는) 유효하지 않은 문자열입니다." %choiceValue)
    print(">>문자열을 다시 확인해 주세요.")
