myprofile_dict = {
    "교육기관" : "미래인재개발원",
    "교육과정명" : "응용sw엔지니어링",
    "대표번호" : "053-243-1001",
    "주소" : "대구광역시 중구 달성로 10 동산빌딩"
}
def hobby_tuple(phonenumber, hobby):
    print("저의 연락처는 {phonenumber}이고, 취미는 {hobby}입니다.".format(phonenumber=phonenumber,hobby=hobby))
profile_tuple = ("010-1111-1111","책읽기")
def hello(name,email,*args,**kwargs):
    print("안녕하세요, " + name + "입니다.")
    print("메일주소는, " + email + "입니다.")
    for key, value in kwargs.items():
        print("{key} = {value}".format(key=key,value=value))
hello("shin","shin@naver.com",hobby_tuple(*profile_tuple),**myprofile_dict)
