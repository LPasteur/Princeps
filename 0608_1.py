# 파일을 받을 수 있는 2가지 방법
# 1. open
# 2. with
fp = open("./animals.csv","r",encoding = "utf-8")   # 읽기모드로 open한다.
data = fp.read()
data            # '강아지, dog\n고양이, cat\n물고기, fish\n원숭이, monkey'
fp.close()

fp = open("new.txt","w")
fp.write("Hello World")
fp.close()

with open("./animals.csv","r",encoding = "utf-8") as fp:   # with블럭내에서 fp를 연다.
    data = fp.read()
data            # '강아지, dog\n고양이, cat\n물고기, fish\n원숭이, monkey'
data.split("\n")   # new line을 기준으로 스트링을 나눈다.
                   # ['강아지, dog', '고양이, cat', '물고기, fish', '원숭이, monkey']
type(data)         # str

# read(), readline(), readlines()   3가지 함수
with open("./animals.csv","r",encoding = "utf-8") as fp:   # with블럭내에서 fp를 연다.
    data = fp.readline()
    data2 = fp.readline()
data2          # '고양이, cat\n'

with open("./animals.csv","r",encoding = "utf-8") as fp:   # with블럭내에서 fp를 연다.
    data = fp.readlines()
data            # ['강아지, dog\n', '고양이, cat\n', '물고기, fish\n', '원숭이, monkey']

# "\n"을 제거하는 코드를 작성하시오.
data[:]=[animal.rstrip('\n') for animal in data]
data            # ['강아지, dog', '고양이, cat', '물고기, fish', '원숭이, monkey']
type(data)      # list
