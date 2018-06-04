color=['red','green','blue']
color2=['black','white']
print(color + color2)

color[0] = 'yellow'

print=(color * 2)           #color리스트 2번 반복

print('blue' in color2)

total_color=color+color2
for each_color in total_color:      #total_color에 입력된 문자열 하나씩 순회
    print(each_color)

a=["color",1,0.2]       #다양한 데이터 타입 입력가능
color=['red','blue']
a[0]=color              #리스트 안에 리스트도 입력가능
