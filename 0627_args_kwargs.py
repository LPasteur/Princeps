[    "two" if(i+1)%2==0 else ""
    for i in range(10)]     # ['', 'two', '', 'two', '', 'two', '', 'two', '', 'two']
[    "three" if(i+1)%3==0 else ""
    for i in range(10)]     # ['', '', 'three', '', '', 'three', '', '', 'three', '']
[    "two" if(i+1)%2==0 else "" + "three" if(i+1)%3==0 else ""
    for i in range(10)]     # ['', 'two', 'three', 'two', '', 'two', '', 'two', 'three', 'two']
[    ("two" if(i+1)%2==0 else "") + ("three" if(i+1)%3==0 else "")
    for i in range(10)]     # ['', 'two', 'three', 'two', '', 'twothree', '', 'two', 'three', 'two']

# 함수 정의 :
def get_sum(a, b):
   return a+b
get_sum(1,2)      # 3
# *args, **kwargs 함수를 정의할 때 "*" -> 하나로 묶어주는 기능 -> pack
def get_sum(*args):
   result = 0
   for arg in args:
       result += arg
   return result
get_sum(1,2,3)      # 6
get_sum(1,2,3,4,5)      # 15

# 함수 정의할 때 "*" -> pack -> 함수에서 여러개의 인자를 받을 때 몇개를 받을지 모른다고 할 때,
#*args를 사용하면 여러개의 인자를 tuple형태로 받음
# 함수를 호출할 때 "*" -> get_sum(*numbers) -> unpack
numbers=[1,2,3,4,5]
# get_sum(numbers)    리스트자체가 들어가기 때문에 오류가 남
get_sum(*numbers)       # 15

# **kwargs -> keyword arguments -> 여러개의 인자를 받을 때, 키(이름)가 있음  key:value->dict
def hello(**kwargs):
    print(kwargs)
hello()         # {}
hello(name="hong",email="hong@naver.com")       # {'name': 'hong', 'email': 'hong@naver.com'}
student={"name":"choi","email":"choi@naver.com"}
hello(**student)        # {'name': 'choi', 'email': 'choi@naver.com'}
hello(**{'name': 'choi', 'email': 'choi@naver.com'})

def hello(name, email, **phonenumber):
    name = print("안녕하세요. " + name + "입니다.")
    email = print("이메일 주소는 " + email)
    phonenumber = print(phonenumber)
hello("홍길동","hong@naver.com",**{'phonenumber':'010-1111-1111'})
#안녕하세요.홍길동입니다.
#이메일 주소는 hong@naver.com
#{'phonenumber': '010-1111-1111'}
