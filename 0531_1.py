## while문으로 1부터 10까지 누적되는 합계를 출력하는 프로그램 ##
print("="*50)
print("■ 1부터 10까지 누적되는 합계를 출력하는 프로그램")
print("-"*50)
start=1
sum=0
print(">>시작 카운트 변수의 값 = [ %d ]" %start)
print("-"*50)
while start<=10:
    sum+=start
    print("> 1부터 %02d까지 누적합계 : %02d" %(start,sum))
    start+=1
count_value=start-1
print("-"*50)
print(">> 카운트 변수의 값 \t = [ %d ]" %count_value)
print(">> 1 + 2 + ... + 9 + 10 = [ %02d ]" %sum)
print("-"*50)
print("프로그램을 종료합니다.")
print("="*50,"\n")

print("="*55)
print("□ 1부터 키보드로 입력받은 수까지 짝수의 누적합계 출력")
print("-"*55)
cnt=0
sum=0
cnt_value=eval(input(">>어디까지 구할까요?:"))
while cnt<=cnt_value:
    sum+=cnt
    cnt+=2
print("-"*55)
print(">>카운트 변수의 현재 값 : %02d" %cnt_value)
print("-"*55)
print(">>1부터 %02d까지 짝수의 누적합계 : %02d" %(cnt_value,sum))
print("-"*55)
print("프로그램을 종료합니다.")
print("="*55)
