# 클래스 정의 소스 코드
class WinterIOC:
    ice_choice = ""         # 클래스 생성
    apply_count = 0         # 필드(변수) 선언
    def __init__(self,ice,apply):          # 기본 생성자 사용
        self.ice_choice = ice
        self.apply_count = apply
    def get_ice(self):
        return self.ice_choice
    def get_apply(self):
        return self.apply_count

# 메인 프로그램 소스 코드
myGame1 = WinterIOC("컬링",4)
myGame2 = WinterIOC("피겨스케이팅",2)
print("%s종목에 %d명이 출전" %(myGame1.get_ice(),myGame1.get_apply()))
print("%s종목에 %d명이 출전" %(myGame2.get_ice(),myGame2.get_apply()))
