select DEPARTMENT_NAME as "학과명", CATEGORY as "계열" from tb_department;   1번
select DEPARTMENT_NAME ||'의 정원은'||CAPACITY||'명 입니다.' as "학과별 정원" from tb_department;   2번
select STUDENT_NAME from tb_student where DEPARTMENT_NO='001' and ABSENCE_YN='y' and STUDENT_SSN like '______2%';   3번
select STUDENT_NAME from tb_student where STUDENT_NO in ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');   4번
select DEPARTMENT_NAME, CATEGORY from tb_department where CAPACITY between 20 and 30;    5번
select DEPARTMENT_NAME, CATEGORY from tb_department where CAPACITY >= 20 and CAPACITY <= 30;    5번
select PROFESSOR_NAME from tb_professor where DEPARTMENT_NO = NULL;    6번
select STUDENT_NAME from tb_student where DEPARTMENT_NO = NULL;    7번
select CLASS_NO, CLASS_NAME from tb_class where PREATTENDING_CLASS_NO != NULL;    8번
-- distinct : 중복제거
select distinct CATEGORY from tb_department;    9번
select STUDENT_NO, STUDENT_NAME, STUDENT_SSN from tb_student where STUDENT_NO = '_2%' and STUDENT_ADDRESS = '%전주%' and ABSENCE_YN = 'no';   10번


insert into tb_department(department_no,department_name) values ('002','영어영문학과');
insert into tb_student(student_no,department_no,student_name,entrance_date) values ('9973003','002','김용근',to_date('19990301','YYYY-MM-DD'));
insert into tb_student(student_no,department_no,student_name,entrance_date) values ('A473015','002','배용원',to_date('20040301','YYYY-MM-DD'));
insert into tb_student(student_no,department_no,student_name,entrance_date) values ('A517105','002','이신열',to_date('20050301','YYYY-MM-DD'));
select STUDENT_NO as "학번", STUDENT_NAME as "이름", ENTRANCE_DATE as "입학년도" from tb_student where DEPARTMENT_NO = '2' order by ENTRANCE_DATE;   1번

select professor_name, professor_ssn from tb_professor where length(professor_name) != 3;    2번

select professor_name as "교수이름", 
to_number(to_char(sysdate,'yyyy'))-(1900+ to_number(substr(PROFESSOR_SSN,1,2))) as "나이"
from tb_professor where substr(PROFESSOR_SSN,7,1) = '1' order by PROFESSOR_SSN;          3번

select substr(professor_name,2) as "이름" from tb_professor;     4번

select student_no, student_name from tb_student 
where to_number(to_char(entrance_date,'yyyy'))-(1900+to_number(substr(student_ssn,1,2))) > 19;     5번

select to_char(to_date('2020/12/25'),'yyyymmdd day') from dual;    6번
-- rr = 1900년대(50~99), 2000년대(0~49)
-- dd = 2000년대
select to_char(to_date('99/10/11','yy/mm/dd'),'yyyymmdd') as "날짜" from dual;
select to_char(to_date('99/10/11','rr/mm/dd'),'rrrrmmdd') as "날짜" from dual;
select to_char(to_date('49/10/11','yy/mm/dd'),'yyyymmdd') as "날짜" from dual;
select to_char(to_date('49/10/11','rr/mm/dd'),'rrrrmmdd') as "날짜" from dual;      7번

select student_no, student_name from tb_student where substr(student_no,1,1) != 'A';    8번

select round(avg(point),1) as "평점" from tb_grade where student_no = 'A517178';      9번

select department_no as "학과번호", count(*) as "학생수(명)" from tb_student group by department_no;    10번
-- 속도가 빠른 순 : index > count(*) > count(컬럼이름)
select count(*) from tb_student where coach_professor_no = null;    11번

select substr(term_no,1,4) as "년도", round(avg(point),1) as "년도 별 평점" from tb_grade where student_no = 'A112113' 
group by substr(term_no,1,4) order by substr(term_no,1,4);    12번
-- y이면 1씩 누적해준다.
select department_no as "학과코드명", count(case when absence_yn='y' then 1 else 0 end) as "휴학생 수" from tb_student 
group by department_no order by 1;    13번

select student_name as "동일이름", count(*) as "동명인 수" from tb_student having count(*)>1 group by student_name;    14번

select substr(term_no,1,4) as "년도", substr(term_no,5,2) as "학기", round(avg(point),1) as "평점" from tb_grade
where student_no = 'A112113' group by substr(term_no,1,4),substr(term_no,5,2);     15번


select student_name as "학생 이름", student_address as "주소지" from tb_student order by student_name;    1번
select student_name, student_ssn from tb_student where absence_yn = 'y' order by 2 desc;     2번
select student_name as "학생이름", student_no as "학번", student_address as "주소" from tb_student where student_address like '%강원도%'
or student_address like '%경기도%' and substr(student_no,1,1) = 9;     3번
select professor_name, professor_ssn from tb_professor where department_no = '003' order by 2 desc;    4번
select student_no, point from tb_grade where class_no = 'C3118100' and substr(term_no,1,4) = '2004' order by 2 desc, 1;     5번
-- 외래키 에러 -> from에서 추가
select student_no, student_name, department_name from tb_student join tb_department using(department_no) order by 2 asc;    6번
select class_name, department_name from tb_class join tb_department using(department_no);    7번
select class_name, department_name from tb_class, tb_department;    7번
select class_name, professor_name from tb_class, tb_professor;      8번
select class_name, professor_name from tb_class join tb_class_professor using(class_no) join tb_professor using(professor_no);    8번
--select student_no as "학번", student_name as "학생 이름", round(avg(point),1) as "전체 평점" 
--from tb_student join tb_grade using(to_number(term_no)) where department_name = '음악학과';    10번

create table tb_category (name varchar2(10), use_yn char(1) default 'y');      1번
create table tb_class_type (no varchar2(5) primary key, name varchar2(10));    2번
alter table tb_category add constraint tb_category primary key(name);          3번
alter table tb_class_type modify (name varchar2(10) not null);                 4번
alter table tb_category modify (name varchar2(20));
alter table tb_class_type modify (no varchar2(10), name varchar2(20));         5번
alter table tb_category rename column name to category_name;
alter table tb_class_type rename column no to class_type_no;
alter table tb_class_type rename column name to class_type_name;               6번
alter table tb_class_type rename constraint tb_class_type to pk_class_type_no; 
alter table tb_category rename constraint tb_category to pk_category_name;     7번
INSERT INTO TB_CATEGORY VALUES ('공학','Y'); INSERT INTO TB_CATEGORY VALUES ('자연과학','Y'); 
INSERT INTO TB_CATEGORY VALUES ('의학','Y'); INSERT INTO TB_CATEGORY VALUES ('예체능','Y'); 
INSERT INTO TB_CATEGORY VALUES ('인문사회','Y'); commit;                        8번
alter table tb_department add foreign key(category) references tb_category(category_name);
alter table tb_department rename constraint sys_c007060 to pk_department_category;   9번
create or replace view vw_학생일반정보 as select a.student_no as "학번", a.student_name as "학생이름", a.student_address as "주소" from tb_student a;   10번
create or replace view vw_지도면담 as select a.student_name as "학생이름", b.department_name as "학과이름", c.professor_name as "지도교수이름" 
from tb_student a, tb_department b, tb_professor c where c.professor_no = a.coach_professor_no and a.coach_professor_no!=null order by b.department_name;   11번
create or replace view vw_학과별학생수 as select a.department_name, count(b.student_no) as student_count from tb_department a, 
tb_student b where a.department_no=b.department_no group by a.department_name;        12번
update vw_학생일반정보 set 학생이름='나' where 학번='A213046';       13번
create or replace view vw_abc as select * from tb_student with read only;     14번
--select department_no as "과목번호", department_name as "과목이름", sum(capacity where open_yn>(to_char(sysdate,'yy')-3)) as "누적수강생수(명)" 
--from tb_department group by department_no, department_name, capacity order by capacity desc;    15번
select to_char(sysdate,'yy')-3 from dual;
