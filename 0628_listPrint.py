menu = 0
namelist = []
while menu != 9:
    print("-"*30)
    print("1. 리스트를 출력한다")
    print("2. 리스트에 이름을 추가한다")
    print("3. 리스트에 이름을 제거한다")
    print("4. 리스트 속의 항목을 변경한다")
    print("9. 종료한다")
    menu = int(input("메뉴에서 항목을 선택하시오 : "))
    if menu == 1:
        for i in range(len(namelist)):
            print("%d. %s" %(i,namelist[i]))
        if namelist == []:
            print("데이터가 없습니다.")
    elif menu == 2:
        add_name = input("추가할 이름을 입력하시오 : ")
        namelist.append(add_name)
    elif menu == 3:
        remove_name = input("제거할 이름을 입력하시오 : ")
        if remove_name not in namelist:
            print("존재하지 않습니다.")
        else:
            namelist.remove(remove_name)
    elif menu == 4:
        replace_name = input("변경될 이름을 입력하시오 : ")
        replace1_name = input("이름을 입력하시오 : ")
        i = namelist.index(replace_name)
        namelist[i] = replace1_name
print("Good bye...")
