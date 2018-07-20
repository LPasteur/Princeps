class introduce():          # 부모 클래스
    def father(self):
        print("아빠")
    def handsome(self):
        print("잘생겼다")
class Family(introduce):           # 자식 클래스(부모 클래스) : 부모메소드를 상속받겠다
    def mother(self):
        print("엄마")
    def son(self):
        print("아들")
class Face(introduce):             # 자식 클래스(부모 클래스) : 부모메소드를 상속받겠다
    def pretty(self):
        print("예쁘다")
    def fat(self):
        print("뚱뚱하다")
we = Family()              # Family 클래스를 we에 인스턴스 생성
we.father()
we.mother()
we.son()
depiction = Face()          # Face 클래스를 depiction에 인스턴스 생성
depiction.handsome()
depiction.pretty()
depiction.fat()
