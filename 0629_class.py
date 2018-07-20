# 클래스 정의 소스 코드
class WinterIOC:
    ice_choice = ""         # 클래스 생성
    apply_count = 0         # 필드(변수) 속성(attribute) 선언

    def ice_game(self,value):        # 메소드 선언 및 입력 매개변수
        self.apply_count = value

# 메인 프로그램 소스 코드
print("★동계올림픽 클래스를 생성하는 프로그램")
print("1. 클래스 생성완료 : WinterIOC")
print("2. 인스턴스 생성 : myGame")
myGame = WinterIOC()        # 인스턴스명 = 클래스명
print("3. 인스턴스의 속성 지정 : 종목과 출전선수 인원")
myGame.ice_choice = "컬링"
myGame.apply_count = 0
print("4. 메소드를 호출하여 인스턴스 출력")
myGame.ice_game(4)          # 메소드 호출
print("출전종목 : %s" %myGame.ice_choice)
print("출전인원 : %d" %myGame.apply_count)
print("프로그램을 종료합니다.")
