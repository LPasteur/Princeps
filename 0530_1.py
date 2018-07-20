##키보드로 값을 eval()함수로 입력받아 덧셈 연산##
print("="*55)
print("eval() 함수로 두수의 덧셈 연산 프로그램")
print("-"*55)
a=eval(input(">>a에 대입할 값 입력:"))
b=eval(input(">>b에 대입할 값 입력:"))
hap=a+b
print("-"*55)
print(">>덧셈의 연산 결과:",hap)
print("="*55)

##본인의 체질량지수(BMI)를 산출하는 프로그램##
print("="*55)
print("본인의 체질량지수(BMI)를 산출하는 프로그램")
print("-"*55)
height=eval(input(">키 입력(m):"))
weight=eval(input(">체중 입력(kg):"))
result=weight/(height*height)
print("-"*55)
print(">>본인의 BMI:",result)
print("="*55)
