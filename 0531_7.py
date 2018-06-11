## for문으로 입력받은 숫자의 구구단 출력 ##
print("="*50)
print("입력받은 수의 구구단을 출력하는 프로그램")
print("-"*50)
while 1:
    out_cnt=0
    choiceValue=input(">>프로그램을 실행하겠습니까? (y/n) :")
    print("="*50)
    out_cnt+=1
    if choiceValue=="Y" or choiceValue=="y":
        print(">>구구단은 2~9 숫자만 입력하세요.")
        print("-"*50)
        while 1:
            dan=int(input(">>몇단을 출력할까요?:"))
            print("-"*50)
            if dan<2 or dan>9:
                print(">>유효숫자 범위 오류!!")
                print("숫자를 다시 입력하세요.")
                print("-"*50)
                continue
            else:
                print(">>%2d의 구구단 출력<<" %dan)

                for cnt in range(1,10,1):
                    print("%5dx%2d=%2d" %(dan,cnt,dan*cnt))
                if cnt==9:
                    print("-"*50)
                    print(">>%2d의 단을 출력하였습니다." %dan)
                    print("-"*50)
                    break
    elif choiceValue=="N" or choiceValue=="n":
        print(">>총 %d회 반복 실행 후 프로그램을 종료합니다." %out_cnt)
        print("-"*50)
        break
    else:
        print(">>알파벳을 잘못 입력하였습니다.")
        print("-"*50)
        continue
