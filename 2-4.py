a=['one',2,3.0]
print(a[-1])
print(a[-2])
print(a[-3])
#print(a[10])
#print(a[-10])

a=[33,35,'first',34,32]
a[2]=31
a.sort()
a.reverse()
print(a)

a=(101,102)
b=(105,)
print(a+b)
print(b[0])

a={101:'smart', 102:'graphic'}
a[103]='db'
print(a)
del a[102]
print(a)

a=set([101,102,103,104])
a.add(105)
a.remove(102)
print(a)
