## 특정 숫자가 입력되기 전까지 무한 반복을 수행하는 프로그램 ##
print("="*50)
print("★ 특정 숫자가 입력되기 전까지 무한반복 프로그램")
print("-"*50)
number="""
    1.컬링
    2.피겨스케이팅
    3.알파인 스키
    4.봅슬레이
    5.쇼트트랙
    6.그냥 종료
    """
choiceValue=0
while choiceValue!=6:
    print(number)
    print("-"*50)
    choiceValue=int(input(">>선호종목 선택(1~6):"))
    print("-"*50)

    if choiceValue == 6:
        pass
    else:
        print(">>%d을(를) 선택하였으므로 무한반복을 수행합니다." %choiceValue)
        print("-"*50)
print(">>%d을(를) 선택하였으므로 프로그램을 종료합니다." %choiceValue)
print("="*50)
