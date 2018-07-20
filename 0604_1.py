import matplotlib.pyplot as plt
x=[1,2,3]
y=[6,4,8]
x2=[1,2,3]
y2=[16,14,18]
plt.plot(x,y,label='First')
plt.plot(x2,y2,label='Second')
plt.xlabel('Numbers')    # x축 label
plt.ylabel('Counting')   # y축 label
plt.title('Practice Plot')     # main title
plt.legend()        # plt.plot() label 기능을 넣음으로써 legend를 보여줌
plt.show()
