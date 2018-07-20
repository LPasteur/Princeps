# 10개의 이미지를 고정 위치에 배치하는 프로그램
from tkinter import *

# 사용할 변수 선언
imgList = ["ice-01.gif","ice-02.gif","ice-03.gif","snow-01.gif","snow-02.gif","snow-03.gif"]
btnList = [None] * 6
low, col = 0, 0
xPos, yPos = 0, 0
cnt = 0

# 메인 소스 코드 부분
rootwin = Tk()
rootwin.geometry("1230x480+300+300")
rootwin.title("동계올림픽 선호종목")

for low in range(0,6):
    btnList[low] = PhotoImage(file = "image/" + imgList[low])
    imgList[low] = Button(rootwin, image = btnList[low])

for low in range(0,2):
    for col in range(0,3):
        imgList[cnt].place(x = xPos, y = yPos)
        cnt += 1
        xPos += 250
    xPos = 0
    yPos += 250

# mainloop() 메소드 호출
rootwin.mainloop()
