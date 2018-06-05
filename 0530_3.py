print(format(123.456789,"8.3e"))
print(format("파이썬 프로그램",">10s"))

##동일한 디렉터리에서 새 파일 생성 및 쓰기 프로그램##
print(">>생성할 파일명 : writefile.txt")
fileName=open("writefile.txt","w")

for cnt in range(1,11):
    prt=">>%03d회 동계올림픽 \n" %cnt
    fileName.write(prt)

fileName.close()
print("\n<<<<<파일쓰기완료>>>>>\n")

##파일내용 한 행만 읽어오는 프로그램##
print(">>읽어올 파일명:writefile.txt")
fileName=open("writefile.txt","r")
first=fileName.readline()
print(first)
fileName.close()

#파일내용 모든 행을 읽어오는 프로그램##
fileName=open("writefile.txt","r")
allLine=fileName.readlines()
for cnt in allLine:
    print(cnt)
fileName.close()
