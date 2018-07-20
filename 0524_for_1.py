a=int(input("구구단 몇단을 계산할까요?:"))
print("구구단", a,"단을 계산합니다.")
for i in range(1,10,1):
    print(a,"X",i,"=",a*i)

for i in range(0,5):    # 반복 실행횟수를 명확히 알 때
    print(i)

i=0                     # 반복 실행횟수가 명확하지 않을 때
while i<5:
    print(i)
    i+=1


print("구구단 몇단을 계산할까요?")
x=1
while x!=0:
    x=int(input())
    if x==0:break
    if not(1<=x<=9):
        print("잘못입력하셨습니다.","1부터 9사이의 숫자를 입력해주세요.")
        continue
    else:
        print("구구단"+str(x)+"단을 계산합니다.")
        for i in range(1,10):
            print (str(x)+"X"+str(i)+"="+str(x*i))
        print("구구단 몇단을 계산할까요?")
print("구구단 게임을 종료합니다.")
