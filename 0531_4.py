## 카운트 변수 1씩 감소하며 동일한 문장 10회를 출력하는 프로그램 ##
print("-"*50)
print("카운트 변수 1씩 감소하며 반복문을 수행하는 프로그램")
print("-"*50)
number=0
for cnt in range(10,0,-1):
    print(">> %2d : 파이썬 프로그램" %cnt)
    number+=1
print("-"*50)
print(">>총 %2d회 반복 수행하였습니다." %number)
print("-"*50)
print("프로그램을 종료합니다.")
print("="*50)

## for문으로 1부터 100까지 한 행에 10개씩 출력하는 프로그램 ##
print("="*50)
print("※ 1부터 100까지 한 행에 10개씩 출력 프로그램")
print("-"*50)
number=int(input(">>어디까지 출력할까요?:"))
print("-"*50)
for cnt in range(1,number+1,1):
    print("%5d" %cnt, end='')
    if cnt%10==0:
        print("")
print("\n"+"-"*50)
print(">>총 %d회를 수행하였습니다." %cnt)
print("-"*50)
print("프로그램을 종료합니다.")
print("="*50)
