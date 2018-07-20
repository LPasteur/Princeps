# 위젯 외부여백 맞추는 프로그램
from tkinter import *

# Tk()클래스의 속성을 지닌 객체 생성
rootwin = Tk()

# 윈도우 창 사이즈와 화면 포지션 지정
rootwin.geometry("200x150+300+300")

# 버튼 생성 : pack 방식
btn1 = Button(rootwin, text="Yes", fg="blue")
btn2 = Button(rootwin, text="No", fg="red")
btn3 = Button(rootwin, text="Cancel", bg="yellow")

# 버튼 위젯 수직정렬과 외부여백 맞추기
btn1.pack(side = TOP, fill = X, padx = 10, pady =10)
btn2.pack(side = TOP, fill = X, padx = 10, pady =10)
btn3.pack(side = TOP, fill = X, padx = 10, pady =10)

# mainloop() 메소드 호출
rootwin.mainloop()
