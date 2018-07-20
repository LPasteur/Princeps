# 체크 버튼 선택과 해제 알림 프로그램
from tkinter import *
import tkinter.messagebox           # 반드시 import 선언해야 함
rootwin = Tk()
# 메소드 정의 부분
def clickMe():
    if chk.get()!=0:
        tkinter.messagebox.showinfo("선택 여부", "컬링 경기를 선택했습니다.")
    else:
        tkinter.messagebox.showinfo("선택 여부", "아무것도 선택하지 않았습니다.")
# 메인 소스 코드 부분
chk = IntVar()
cbn = Checkbutton(rootwin, text = "컬링 경기", variable = chk, command =clickMe)
cbn.pack()
rootwin.mainloop()
