##다양한 조건문으로 성적등급 판별 프로그램##
score=eval(input("점수는 얼마입니까?"))
if score>100 or score<0:
    print("입력한 [%d]은(는) 점수의 허용구간이 아닙니다." %score)
else:
    if 90<=score<=100:
        print("A")
    elif 80<=score<90:
        print("B")
    elif 70<=score<80:
        print("C")
    elif 60<=score<70:
        print("D")
    else:
        print("F")
