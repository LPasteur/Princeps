# 1. 클래스명 : Person
# 2. 멤버변수(속성) : name, phonenumber -> 본인이름, 폰번호
# 3. 생성자 메소드 : __init__
# 4. 메소드 : print_persondata() -> 멤버 데이터를 출력하는 메소드
# 5. Person클래스를 상속받는 Student클래스를 선언
# 6. Student클래스를 멤버변수 :student_id, subject -> 출석번호, 사물인터넷
# 7. Student클래스에 __init__()메소드 작성
# 8. Person 클래스는 p객체 생성
# 9. Student클래스는 s객체 생성
# 10. Student클래스에서 부모클래스에 있는 print_persondata() 호출
class Person:
    name = ""
    phonenumber = ""
    def __init__(self,name,phonenumber):
        print('Person() 생성자 호출!')
        self.name = name
        self.phonenumber = phonenumber
    def __del__(self):
        print("Person() 소멸자 호출!")
    def print_persondata(self):
        print("이름은 {0}이고, 폰번호는 {1}".format(self.name,self.phonenumber))
class Student(Person):
    student_id = ""
    subject = ""
    def __init__(self,name,phonenumber,student_id,subject):
        print("Student() 생성자 호출!")
        super().__init__(name,phonenumber)
        self.student_id = student_id
        self.subject = subject
    def __del__(self):
        super().__del__()
        print("Student() 소멸자 호출!")
    def print_persondata(self):         # 오버라이딩
        super().print_persondata()
        print("출석번호는 {0}이고, 과정명은 {1}".format(self.student_id,self.subject))
name = input("이름을 입력하시오 : ")
phonenumber = input("연락처를 입력하시오 : ")
student_id = input("출석번호를 입력하시오 : ")
subject = input("과정명을 입력하시오 : ")
# p = Person(name,phonenumber)
s = Student(name,phonenumber,student_id,subject)
# p.print_persondata()
s.print_persondata()
