for j in range(6):
    for i in range(j):
        print("*", end="")
    print("")

a=[1,2,3,4,5]
a.append(10)        #stack : last in first out(나중에 들어간 것이 먼저 나온다.)
a.append(20)        #        data입력-append(), 출력-pop   입출구가 같다.
print(a)
a.pop()
print(a)
a.pop()
print(a)

a.append(10)    #queue : first in first out(먼저 들어간 것이 먼저 나온다.)  줄짓기
a.append(20)    #        put-append(), get-pop(0)  입출구가 다르다.
a.pop(0)
print(a)
a.pop(0)
print(a)

t=(1,2,3)           #tuple : 값이 바뀌지 않는다.(리스트와의 차이점)  ( )를 사용
print(t+t,t*2)
print(len(t))

student_info={20140012:"adfewr", 20140039:"qwsad"}    #dictionary : key와 value를 매핑하여 key로 value를 검색.
print(student_info[20140012])                         #             다른 언어에서는 HashTable이라는 용어를 사용.
student_info[20140012]="janhe"                        #             {Key1:Value1,Key2:Value2,Key3:Value3...}형태.
print(student_info[20140012])
student_info[20140039]="wodfh"
print(student_info)
