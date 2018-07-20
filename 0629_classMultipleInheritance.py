class ParentOne:
    def func(self):
        print("ParentOne의 함수 호출")
class ParentTwo:
    def func(self):
        print("ParentTwo의 함수 호출")

# 다중 상속
class Child(ParentOne,ParentTwo):
    def childFun(self):
        ParentOne.func(self)
        ParentTwo.func(self)
objectChild = Child()
objectChild.childFun()
print(issubclass(Child,ParentOne))      # true  # Child가 ParentOne의 subclass인지를 알려준다
