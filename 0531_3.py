## continue문을 사용하여 짝수의 누적합을 산출하는 프로그램 ##
print("="*50)
print("☆ continue문을 사용하여 짝수의 누적합 산출 프로그램")
print("-"*50)

cnt=0
sum=0

number=int(input(">>어디까지 구할까요?:"))
print("-"*50)

while cnt < number:
    cnt+=1
    if cnt%2!=0:
        continue
    else:
        sum+=cnt
        print(">>2부터 %3d까지 짝수의 누적합... %5d" %(cnt,sum))
print("-"*50)
print("프로그램을 종료합니다.")
print("="*50)
