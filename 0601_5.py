def calculate(x,y):
    total=x+y
    print("In Fucntion")
    print("a:",str(a),"b:",\
        str(b),"a+b:",str(a+b),"total:",str(total))
    return total
a,b,total=[5,7,0]
print("In Program - 1")
print("a:",str(a),"b:",str(b),"a+b",str(a+b))
sum=calculate(a,b)
print("After Calculation")
print("Total:",str(total),"sum:",str(sum))

## 인덱스 값을 넣어야 적용 ##
def swap_value(x,y):    # local변수
    temp=x
    x=y
    y=temp
def swap_offset(offset_x,offset_y):
    temp=a[offset_x]
    a[offset_x]=a[offset_y]
    a[offset_y]=temp
def swap_reference(list_ex,offset_x,offset_y):
    temp=list_ex[offset_x]
    list_ex[offset_x]=list_ex[offset_y]
    list_ex[offset_y]=temp
# main
a=[10,20,30,40,50]
print(a)    # [10,20,30,40,50]   global변수
swap_value(a[1],a[2])
print(a)    # [10,30,20,40,50]X -> [10,20,30,40,50]
swap_reference(a,1,2)
print(a)    # [10,30,20,40,50]
a=[10,20,30,40,50]
swap_offset(1,2)
print(a)    # [10,30,20,40,50]
