##파일에 새로운 내용을 추가하는 프로그램##
print(">>write()함수로 파일에 새로운 내용 추가하기")
fileName=open("writefile.txt","a")
data="---<<추가내용>>---\n"
fileName.write(data)
print(data)
for cnt in range(11,16):
    addWrite=">>%02d회 동계올림픽 \n" %cnt
    fileName.write(addWrite)
    print(addWrite)
fileName.close()

##with~as문으로 파일에 새로운 내용을 추가하는 프로그램##
print(">>with~as문으로 파일에 새로운 내용 추가하기")

with open("writefile.txt","a") as fileName:
    data="\n---<<추가내용2>>---\n"
    fileName.write(data)
print(data)
fileName.close()
