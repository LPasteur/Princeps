def f():
    s="I love London!"
    print(s)
s="I love Paris!"
f()
print(s)

def f():
    global s
    s="I love London!"
    print(s)
s="I love Paris!"
f()
print(s)

def test(t):
    t=20
    print("In Function :",t)
x=10
print("Before :",x)
test(x)
print("After :",x)

def test(t):
    print(x)
    t=20
    print("In Function :",t)
x=10
test(x)
print(x)
