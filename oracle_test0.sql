--1. 학과
create table tb_department(
   department_no varchar2(10) not null primary key,
   department_name varchar2(20) not null,
   category varchar2(20),
   open_yn char(1),
   capacity number
   );
--2. 학생
create table tb_student(
   student_no varchar2(10) not null,
   department_no varchar2(10) not null,
   student_name varchar2(30) not null,
   student_ssn varchar2(14),
   student_address varchar2(100),
   entrance_date date,
   absence_yn char(1),
   coach_professor_no varchar2(10),
--   제약조건 : constraint
   constraint PK_STUDENT primary key(student_no),
   constraint FK_STUDENT foreign key(department_no)
   references tb_department(department_no),
   constraint FK_STUDENT1 foreign key(coach_professor_no)
   references tb_professor(professor_no)
   );
--3. 과목
create table tb_class(
   class_no varchar2(10) not null,
   department_no varchar2(10) not null,
   preattending_class_no varchar2(10),
   class_name varchar2(30) not null,
   class_type varchar2(10),
   constraint PK_CLASS primary key(class_no),
   constraint FK_CLASS foreign key(department_no)
   references tb_department(department_no)
   );
--4. 과목 교수
create table tb_class_professor(
   class_no varchar2(10) not null,
   professor_no varchar2(10) not null,
   constraint PK_CLASS_PROFESSOR primary key(class_no, professor_no),
   constraint FK_CLASS_PROFESSOR foreign key(class_no)
   references tb_class(class_no),
   constraint FK_CLASS_PROFESSOR1 foreign key(professor_no)
   references tb_professor(professor_no)
   );
--5. 교수
create table tb_professor(
   professor_no varchar2(10) not null,
   professor_name varchar2(30) not null,
   professor_ssn varchar2(14),
   professor_address varchar2(100),
   department_no varchar2(10),
   constraint PK_PROFESSOR primary key(professor_no),
   constraint FK_PROFESSOR foreign key(department_no)
   references tb_department(department_no)
   );
--6. 성적
create table tb_grade(
   term_no varchar2(10) not null,
   class_no varchar2(10) not null,
   student_no varchar2(10) not null,
   point number(3,2),
   constraint PK_TB_GRADE primary key(term_no, class_no, student_no),
   constraint FK_TB_GRADE foreign key(class_no)
   references tb_class(class_no),
   constraint FK_TB_GRADE1 foreign key(student_no)
   references tb_student(student_no)
   );
alter table tb_class_professor add primary key(class_no, professor_no);
alter table tb_class_professor add foreign key(class_no)
   references tb_class(class_no);
alter table tb_class_professor add foreign key(professor_no)
   references tb_professor(professor_no);
select * from tab;
select * from tb_class;