month_one = int(input("달을 선택하세요(1~12)?"))
months = ['January','Febuary','March','April','May','June','July','August','September','October','November','December']
if 1<=month_one<=12:
    months=months[month_one-1]
    print("month is",months)

print("결제방법은 다음과 같습니다.")
print("a.현금:cash,b.카드:card,c.핸드폰:phone")
ticket=['cash','card','phone']
print("문자열 입력 예시 --> space")
choiceValue=input("결제방법 문자열 입력:")
if choiceValue in ticket:
    print("[%s]결제방법을 선택하였습니다." %choiceValue)
else:
    print("입력한 [%s]는 유효하지 않습니다." %choiceValue)

gender = eval(input("성별입력(남->1 / 여->2)"))
if gender==1:
    print("당신은 남자입니다.")
    height = eval(input("키입력(cm):"))
    if height>=180:
        print("농구하세요")
    else:
        print("축구하세요")
else:
    print("당신은 여자입니다.")
    weight=eval(input("체중입력(kg):"))
    if weight<=70:
        print("배구하세요")
    else:
        print("피구하세요")
print("프로그램 종료")
