start = 1
end = 10
sum = 0
print("시작 카운트 변수의 값   %d" %start)
while start <= end:
    sum += start
    print("1부터 %02d까지 누적합계 : %02d" %(start,sum))
    start += 1
start -= 1
print("카운트 변수의 값\t%d" %start)
print("1 + 2 + ... + 9 + 10 = %02d" %sum)
