from matplotlib import pyplot as plt
from matplotlib import animation

def SimplePoint(x, y):
    return x+1, y+1

def DrawFractal(func, maxStep, drawStyle = 1, startX = 0, startY = 0):
    # drawStyle: [1] plot with marker, [2] plot without marker, [3] scatter
    x, y = startX, startY
    xList = [x]
    yList = [y]

    for i in range(maxStep):
        x, y = func(x, y)
        xList.append(x)
        yList.append(y)

    if (drawStyle == 1):
        plt.plot(xList, yList, marker='o')
    elif (drawStyle == 2):
        plt.plot(xList, yList)
    else:
        plt.scatter(xList, yList)

    plt.show()

DrawFractal(SimplePoint, 10)

import random

def get_index(probabilities):
    max = sum(probabilities)

    acc = 0
    rand = random.random() * max
    for idx, percent in enumerate(probabilities):
        acc += percent
        if rand < acc:
            return idx
    return len(probabilities)
def Barnsley1(x, y): return 0.85*x + 0.04*y  , -0.04*x + 0.85*y + 1.6
def Barnsley2(x, y): return 0.2*x - 0.26*y   , 0.23*x + 0.22*y + 1.6
def Barnsley3(x, y): return -0.15*x + 0.28*y , 0.26*x + 0.24*y + 0.44
def Barnsley4(x, y): return 0                , 0.16*y

barnsleyList = [Barnsley1, Barnsley2, Barnsley3, Barnsley4]
barnsleyPercent = [0.85, 0.07, 0.07, 0.01]

def BarnsleyFractal(x,y):
    return barnsleyList[get_index(barnsleyPercent)](x,y)

DrawFractal(BarnsleyFractal, 10000, 3)
