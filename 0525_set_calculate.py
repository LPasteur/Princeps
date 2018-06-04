
s=set([1,2,3])      #set : 집합.  값을 순서없이 저장.  중복불허하는 자료형.
print(s)            #      set 객체 선언을 이용하여 객체 생성.
s.add(1)
print(s)
s.remove(1)
print(s)
s.update([1,4,5,6,7])
print(s)
s.discard(3)
print(s)
s.clear()
print(s)

s1=set([1,2,3,4,5])
s2=set([3,4,5,6,7])
print(s1.union(s2))                #s1과 s2의 합칩합    s1 l s2
print(s1.intersection(s2))         #s1과 s2의 교집합    s1 & s2
print(s1.difference(s2))           #s1과 s2의 차집합    s1 - s2
