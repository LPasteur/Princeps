## 중첩 for문으로 구구단 출력 ##
print("="*50)
print("중첩 for문으로 구구단 출력하기")
print("-"*50)
dan=0
cnt=0
print(">>2~9단까지 출력")
print("-"*50)
for dan in range(2,10,1):
    print(">>%2d단 출력<<" %dan)

    for cnt in range(1,10,1):
        print("%2dx%2d=%2d" %(dan,cnt,dan*cnt))
    print("-"*50)
print(">>프로그램을 종료합니다.")
print("="*50)

## while과 if를 이용한 홀수의 누적합 프로그램 ##
cnt=1
sum=0
number=int(input(">>어디까지 구할까요?:"))
while cnt<=number:
    if cnt%2==0: #짝수
        pass
    else:
        sum+=cnt
    cnt+=1
print(">>1부터 %d까지 홀수의 누적합 : %d" %(number,sum))
