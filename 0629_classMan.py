class man:          # 클래스 선언 및 변수, 함수 정의
    height = 100
    weight = 200
    vital = 300
    def getProfile(self):
        return self.height + self.weight + self.vital +1000
    def upgrade(self):          # self를 통해 클래스의 객체를 구분
        self.height += 10
        self.weight +=20
        self.vital += 30
kkw = man()                     # man 객체 생성
print(kkw.getProfile())         # kkw 객체 내의 함수 호출
print(kkw.height + kkw.weight + kkw.vital)
kkw.upgrade()                   # 객체 내의 변수 연산
print(kkw.getProfile())
