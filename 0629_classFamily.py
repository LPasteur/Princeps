class Family():
    def father(self):
        print("아빠")
    def mother(self):
        print("엄마")
    def son(self):
        print("아들")
class Face():
    def handsome(self):
        print("잘생겼다")
    def pretty(self):
        print("예쁘다")
    def fat(self):
        print("뚱뚱하다")
we = Family()       # Family클래스를 we에 인스턴스 생성
we.father()
we.mother()
we.son()
depiction = Face()      # Face클래스를 depiction에 인스턴스 생성
depiction.handsome()
depiction.pretty()
depiction.fat()
