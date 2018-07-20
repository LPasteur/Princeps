class Human:            # 클래스
    eye = 2
    ears = 2

    def eat(self):
        print("음식을 먹는다")
    def study(self):
        print("공부는 끝이 없다")

man1 = Human()          # 인스턴스
print("사람이면 눈이", man1.eye)
man1.eat()              # 메소드

# 클래스 생성
class Alphago():
    '''나는 판별하는 알파고다'''
# 클래스 생성 끝

# 인스턴스 생성
choice1 = Alphago()
choice2 = Alphago()
# 인스턴스 생성 끝

# 클래스 특성 만들기
choice1.what = '강아지'
choice2.what = '사람'
choice1.speak = '말해'
choice2.speak = '짖어'
def rst(choice):
    print('엄마!! 저기 {}이(가) {}요!!'.format(choice.what,choice.speak))
Alphago.rst = rst       # 클래스의 소속이라는 걸 표시(바깥에서)(안에선 self로 표시를 함)

choice1.rst()
choice2.rst()
# 클래스 특성 만들기 끝
