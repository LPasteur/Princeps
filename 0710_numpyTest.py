import numpy as np
x = np.array([1,2,3])     # [1,2,3]
y = np.arange(10)         # [0,1,2,3,4,5,6,7,8,9]
a = np.array([1,2,3,6])
b = np.linspace(0,2,4)    # [0,0.66,1.33,2]
c = a-b
print(c)
print(a**2)
a = np.linspace(-np.pi,np.pi,100)
b = np.sin(a)
c = np.cos(a)
print(a,b,c)

from numpy.random import rand
from numpy.linalg import solve, inv
a = np.array([[1,2,3],[3,4,6.7],[5,9.0,5]])
print(a.transpose())    # 전치행렬(행과 열 바꿈)
print(inv(a))       # 역행렬
b = np.array([3,2,1])
print(solve(a,b))   # ax=b의  x값 (a의 역행렬 x b의 값)
c = rand(3,3)*20    # 1~20의 랜덤 변수를 가지는 3x3 matrix
print(c)
d = np.dot(a,c)     # a행렬과 c행렬의 곱
print(d)

import matplotlib.pyplot as plt
t = np.arange(0,10,0.01)
y = 3*t + 5
y_noise = y + np.random.randn(len(y))
plt.figure(figsize=(12,8))      # 그래프 사이즈 조절
plt.plot(t,y_noise)
plt.show()
fp1 = np.polyfit(t, y_noise, 1)     # t와 y_noise의 1차식 계수를 찾는다
print(fp1)
fp2 = np.polyfit(t, y_noise, 2)     # t와 y_noise의 2차식 계수를 찾는다
print(fp2)
f1 = np.poly1d(fp1)     # 1차식 계수를 방정식화
print(f1)
print(np.poly1d([1,1])*np.poly1d([1,-1]))     # x^2-1
print(np.poly1d([1,0,-1]))                    # x^2-1
print(np.poly1d([1,-2,1])/np.poly1d([1,-1]))
