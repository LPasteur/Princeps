y=int(input("당신이 태어난 년도를 입력하세요:"))
a=2018-y+1
if 20<=a<=26:
    print("대학생")
elif 17<=a<20:
    print("고등학생")
elif 14<=a<17:
    print("중학생")
elif 8<=a<14:
    print("초등학생")
else:
    print("학생이 아닙니다")


import random
a=random.randint(1,10)
print("숫자를 맞춰보세요(1~10)")
b=int(input())
while a!=b:
    if a<b:
        print("보다 작은수를 입력하세요.")
        b=int(input())
    elif a>b:
        print("보다 큰수를 입력하세요.")
        b=int(input())
else:
    print("정답입니다. 컴퓨터가 만든 숫자는",a,"입니다.")
