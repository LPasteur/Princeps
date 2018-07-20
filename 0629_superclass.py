# 클래스 정의 소스 코드
class WinterIOC:                # 슈퍼 클래스 생성
    ice_choice = ""             # 인스턴스 변수
    apply_count = 0             # 인스턴스 변수
    nationality_count = 0       # 슈퍼 클래스 변수
class SubIce(WinterIOC):
    def __init__(self):                   # 기본 생성자 사용
        self.ice_choice = ""              # 인스턴스 변수 사용
        WinterIOC.nationality_count += 1        # 슈퍼 클래스 변수 사용

# 메인 프로그램 소스 코드
myGame1, myGame2 = None, None           # 변수 선언
myGame1 = SubIce()                      # 서브 클래스 인스턴스 생성
myGame1.ice_choice = "컬링"
print("경기종목 : %s" %myGame1.ice_choice)          # 인스턴스 변수 값 출력
print("출전국가 : %d개국" %WinterIOC.nationality_count)       # 클래스 변수 값 출력
myGame2 = SubIce()                      # 서브 클래스 인스턴스 생성
myGame2.ice_choice = "컬링"
print("경기종목 : %s" %myGame2.ice_choice)          # 인스턴스 변수 값 출력
print("출전국가 : %d개국" %WinterIOC.nationality_count)       # 클래스 변수 값 출력
