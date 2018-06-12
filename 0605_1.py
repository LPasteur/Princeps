# check_number() 인자값을 받아 정수가 양수인지, 음수인지, 0인지를 판별하시오.
def check_number(num):
    return "양수입니다." if num>0 else("음수입니다." if num<0 else "0입니다.")

# String 문자열과 관련된 함수들...
# split-분리, join-합치기, replace-대체, startswith-시작지점에있는지, endwith, Len, ......
# 엑셀에서 CSV파일.
data="123,홍길동,30,best@gmail.com"
data.split(",")          # ['123', '홍길동', '30', 'best@gmail.com']
my_infos=['홍길동','30','best@gmail.com','대구시 중구 남산동']
",".join(my_infos)       # '홍길동,30,best@gmail.com,대구시 중구 남산동'
data.replace(",","|")    # '123|홍길동|30|best@gmail.com'
'홍길동' in data         # True
data.startswith("123")   # True
data.startswith("100")   # False
animals=[]
animals.append("강아지")   # list에 새로운 값을 추가할때 -> append()

# dict를 다룰때 편한 함수 -> .get()
student={"name":"홍길동","email":"best@gmail.com"}
student.get("address","주소를 찾을 수 없습니다.")

# 파이썬으로 가장 기본적인 파일 읽고 쓰는 방법
# 간단한 문서를 쓰고 읽어오기
# open()
fp=open("first.txt","r")    # 파일 읽기
data=fp.read()
print(data)
data.split("\n")    # ['Hello', 'Python programming']

fp=open("second.txt","w")   # 파일 쓰기
fp.write("hello \n python programming")
fp.close()
