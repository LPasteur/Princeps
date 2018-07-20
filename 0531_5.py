## for문에서 리스트를 사용하여 고혈압 판별 프로그램 ##
print("="*50)
print("for문에서 리스트를 사용하여 고혈압 판별 프로그램")
print("-"*50)
palse=[165,123,148,104,92]
cnt=0
print(">>주어진 리스트 자료=",end='')
print(palse)
print("-"*50)
for blood in palse :
    cnt+=1
    if blood >= 140:
        print(">>환자번호:%05d" %cnt)
        print(">>건강상태:고혈압")
        print(">>권고사항:체중감량")
        print("-"*50)
    elif blood >= 120 and blood < 140:
        print(">>환자번호:%05d" %cnt)
        print(">>건강상태:정상혈압")
        print(">>권고사항:상태유지")
        print("-"*50)
    else:
        print(">>환자번호:%05d" %cnt)
        print(">>건강상태:저혈압")
        print(">>권고사항:운동권유")
        print("-"*50)
print(">>프로그램을 종료합니다.")
print("="*50)
