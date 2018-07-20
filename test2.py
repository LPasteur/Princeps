print("앞차 간격을 입력하세요:")
distance=float(input())
if distance<=10:
    print("속도를 10km이하로 늦추시오.")
else:
    print("현재 속도로 운전하시면 됩니다.")

print("운전자의 나이가 무엇입니까?")
age=int(input())
if 1<=age<=20:
    print("자동차 운전을 하지 마시오.")
else:
    print("자동차 운전을 하십시오.")

print("휴대폰 비밀번호를 입력하세요:")
password=int(input())
count=1
while password!=1234 and count<=4:
    password=int(input("비밀번호가 틀렸습니다. 휴대폰 비밀번호를 입력하세요:"))
    count+=1
if password==1234:
    print("비밀번호가 맞습니다.")
elif password!=1234:
    print("비밀번호가 틀렸습니다. 10초후에 다시 도전하세요.")
a=0
count=0
while a<10:
    a+=1
    count+=1
    print("%d초" %a)
    if a==10:
        print("도전하세요.")
