import numpy as np
import matplotlib.pyplot as plt
t = np.arange(0,10,0.01)
y = 3*t + 5
y_noise = y + np.random.randn(len(y))
fp1 = np.polyfit(t, y_noise, 1)     # t와 y_noise의 1차식 계수를 찾는다
f1 = np.poly1d(fp1)     # 1차식 계수를 방정식화
plt.figure(figsize=(12,8))
plt.plot(t,y_noise,label='noise',color='y')
plt.plot(t,y,ls='dashed',lw=3,color='b',label='original')
plt.plot(t,f1(t),lw=2,color='r',label='polyfit')
plt.grid()      # 눈금 표시
plt.legend()    # 범례 표시
plt.show()

y = np.square(t-1) + 1
y_noise = y + 10 * np.random.randn(len(y))
fp1 = np.polyfit(t, y_noise, 2)
f1 = np.poly1d(fp1)
plt.figure(figsize=(12,8))
plt.plot(t,y_noise,label='noise',color='y')
plt.plot(t,y,ls='dashed',lw=3,color='b',label='original')
plt.plot(t,f1(t),lw=2,color='r',label='polyfit')
plt.grid()
plt.legend()
plt.show()
