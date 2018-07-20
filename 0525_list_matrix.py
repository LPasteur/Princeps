kor_score=[49,79,20,100,80]
math_score=[43,59,85,30,90]
eng_score=[49,79,48,60,100]
midterm_score=[kor_score,math_score,eng_score]
print(midterm_score[0][2])          #큰 리스트 0번째 안에 작은 리스트 2번째 숫자보여주기

student_score=[0,0,0,0,0]
i=0
for subject in midterm_score:
    for score in subject:
        student_score[i]+=score     #각 학생마다 개별로 교과점수
        i+=1                        #학생 index구분
    i=0                             #과목이 바뀔때 학생 인덱스 초기화
else:                               #반복이 정상종료된 직후 실행할 코드
    a,b,c,d,e=student_score         #학생별 점수를 unpacking
    student_average=[a/3,b/3,c/3,d/3,e/3]
    print(student_average)
