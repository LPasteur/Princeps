##딕셔너리를 사용하여 동계올림픽 경기 중에서 하나를 선택하는 프로그램##
print("동계올림픽 관람종목은 다음과 같습니다.")
print("1.컬링, 2.피겨, 3.스키, 4.봅슬레이, 5.쇼트트랙")
number=eval(input("관람종목 선택(1~5):"))
if number>=1 and number<=5:
    choiceValue={1:"컬링", 2:"피겨", 3:"스키", 4:"봅슬레이", 5:"쇼트트랙"}
    print("선택한 종목 :",choiceValue.get(number))
else:
    print("입력한 [%d]은(는) 유효숫자가 아닙니다." %number)


print("="*40)
print("혈액형의 특성은 다음과 같습니다.")
print("a.A형-차분한성격")
print("b.B형-발전형성격")
print("c.O형-활발한성격")
print("d.AB형-도전적성격")
print("-"*40)
alpabet=input("알파벳 입력(a~d):")
alpabet_value={'a':"A형-차분한성격", 'b':"B형-발전적성격", 'c':"O형-활발한성격", 'd':"AB형-도전적성격"}
print("-"*40)
if alpabet in alpabet_value:
    print("선택한 혈액형 결과:",alpabet_value.get(alpabet))
else:
    print("입력한 알파벳 %s은(는) 지원하지 않습니다." %alpabet)
    print("프로그램을 다시 시작하세요.")
print("-"*40)
print("프로그램을 종료합니다.")
print("="*40)
