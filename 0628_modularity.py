# import module1
# print("모듈에서 정의된 3개의 함수 호출")
# module1.mod_01()
# print("~"*35)
# module1.mod_02()
# print("~"*35)
# module1.mod_03()
#

# from module1 import*
from module1 import mod_01, mod_03
print("모듈에서 정의된 3개의 함수 호출")
mod_01()
print("~"*35)
# mod_02()
# print("~"*35)
mod_03()

# 모듈명(파일이름)은 의미있는 이름을 준다.
# 모듈안에는 함수가 있다.
# import 모듈명  ->  모듈명.함수명()
# from 모듈명 import*  ->  함수명()
# from 모듈명 import 함수1, 함수2  ->  함수1()   함수2()
