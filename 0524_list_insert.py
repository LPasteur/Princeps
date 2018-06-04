color=['red','green','blue']
color.append("white")               #리스트에 "white"추가
color.extend(["black","puple"])     #리스트안에 새로운 리스트 추가
print(color)
color.insert(0,"orange")            #0번째 주소에 "orange"추가
print(color)
color.remove("white")               #리스트안에 "white"삭제
print(color)
del color[0]                        #0번째 주소에 있는것 삭제
print(color)

a=[5,3,4,1,2]
a.index(2)          #정수2가 있는 주소값
a.count(5)          #숫자5가 리스트에 몇개있는지
a.sort()            #리스트 a정렬
a.reserve()         #리스트 a 역정렬
b=sorted(a)         #정렬된 a를 b변수에 할당
#패킹 : 한 변수에 여러개의 데이터를 넣는 것
t=[1,2,3]           #1,2,3을 변수 t에 패킹
a,b,c=t             #언패킹
print(t,a,b,c)      #패킹  [1,2,3] 1 2 3
