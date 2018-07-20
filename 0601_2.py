## 사각형의 넓이를 구하는 함수 ##
def calculateRectangleArea(x,y):
    print("함수가 실행중입니다.")
    return x*y

## 함수를 호출하는 소스 코드 ##
rectangle_x=10
rectangle_y=20
print("사각형 x의 길이 :",rectangle_x)
print("사각형 y의 길이 :",rectangle_y)
print("사각형의 넓이 :",calculateRectangleArea(rectangle_x,rectangle_y))


def a_type():
    print(">>parameter와 argument가 없는 함수")
def b_type(num1,num2):
    add=num1+num2
    print(">>parameter는 있고 return값이 없는 함수 :%d" %add)
def c_type():
    return "Python programming"
def d_type(num1,num2):
    add=num1+num2
    return add
print(a_type(),b_type(1,2),c_type(),d_type(3,4))
