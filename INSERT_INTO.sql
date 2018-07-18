----테이블은 순서 대로 작성
----기본키와 외래키가 요구 조건에 만족 될 수 있게
----참조된 기본키가 등장하는 순서 대로 작성 
--
----학과 테이블 작성
--create table tb_department(
--    department_no varchar2(10) not null,
--    department_name varchar2(20) not null,
--    category varchar2(20),
--    open_yn char(1),
--    capacity number,
--    
--    constraint pk_department primary key(department_no)
--);
--
----교수 테이블 작성
--create table tb_professor(
--    professor_no varchar2(10) not null,
--    professor_name varchar2(30) not null,
--    professor_ssn varchar2(14),
--    professor_address varchar2(100),
--    department_no varchar2(10),
--    
--    constraint pk_professor primary key(professor_no),
--    
--    constraint fk_professor foreign key(department_no)
--        references tb_department(department_no)
--);
--
----학생 테이블 작성
--create table tb_student(
--    student_no varchar2(10) not null,
--    department_no varchar2(10) not null,
--    student_name varchar2(30) not null,
--    student_ssn varchar2(14),
--    student_address varchar2(100),
--    entrance_date date,
--    absence_yn char(1),
--    coach_professor_no varchar2(10),
--    
--    constraint pk_student primary key(student_no),
--    
--    constraint fk_student0 foreign key(department_no)
--        references tb_department(department_no),
--    constraint fk_student1 foreign key(coach_professor_no)
--        references tb_professor(professor_no)
--);
--alter
--
--
----과목 테이블 작성
--create table tb_class(
--    class_no varchar2(10) not null,
--    department_no varchar2(10) not null,
--    preattending_class_no varchar2(10),
--    class_name varchar2(30) not null,
--    class_type varchar2(10),
--    
--    constraint pk_class primary key(class_no),
--    
--    constraint fk_class0 foreign key(department_no)
--        references tb_department(department_no),
--    constraint fk_class1 foreign key(preattending_class_no)
--        references tb_department(department_no)
--);
----alter table tb_class
----    add constraint fk_class1 foreign key(preattending_class_no)
----    references tb_department(department_no);
--    
----과목 교수 테이블 작성
--create table tb_class_professor(
--    class_no varchar2(10) not null,
--    professor_no varchar2(10) not null,
--    
--    constraint pk_class_professor primary key(class_no, professor_no),
--    
--    constraint fk_class_professor0 foreign key(class_no)
--        references tb_class(class_no),
--    constraint fk_class_professor1 foreign key(professor_no)
--        references tb_professor(professor_no)
--);
--
----성적 테이블 작성
--create table tb_grade(
--    term_no varchar2(10) not null,
--    class_no varchar2(10) not null,
--    student_no varchar2(10) not null,
--    point number(3,2),
--    
--    constraint pk_grade primary key(term_no, class_no, student_no),
--    
--    constraint fk_grade0 foreign key(class_no)
--        references tb_class(class_no),
--    constraint fk_grade1 foreign key(student_no)
--        references tb_student(student_no)
--);
--
----성적 테이블에 기본키를 한번에 3개 입력
--alter table tb_grade
--    add primary key(term_no, class_no, student_no);
--
----같은 테이블(학과 교수 테이블)에 기본키를 인덱스 이름을 줘서 여러게는 따로
----넣을 려고 했지만 실패 기본키가 이미 정의 되면 다시 넣을 수 없게 된다.
----하지만 여러게의 기본키에 인덱스를 넣는 방법이 있다.
----기본키에 인덱스를 주면서 넣는 방법은 흡사 배열을 보는 것 같다.
--alter table tb_class_professor
--    add constraint pk_class_professor0 primary key(class_no);
--alter table tb_class_professor
--    add constraint pk_class_professor1 primary key(professor_no);
----위 코딩이 에러가 나므로 기본키를 한번에 여러게 넣는 코딩을 한다.  
----인덱스를 넣지 않고 여러게의 기본키를 만드는 방법
--alter table tb_class_professor
--    add primary key(class_no, professor_no);
----인덱스를 넣고 여러게의 기본키를 만드는 방법
--alter table tb_class_professor
--    add constraint pk_class_professor primary key(class_no, professor_no);
--    
----기본키를 일일히 넣기에 실패해서 이미 들어간 기본키를 삭제하기 위한 코딩    
--alter table tb_class_professor
--    drop primary key;
--
----참조 코딩
----생성된 모든 테이블 보기
--select * from tab;
----테이블 정보 보기
--desc tb_department;
----테이블 생성 순서
----tb_department → tb_professor → tb_student → tb_class 
----→ tb_class_professor → tb_grade
----테이블 삭제 하기 생성 순서와 반대로 하면 된다.
----이유는 외래키때문이다.  
----삭제 후 휴지통 비우기를 하면 완벽하게 지워진다.
----휴지통 비우기도 같은 순서로 비워야 한다.
--drop table tb_grade;
--drop table tb_class_professor;
--drop table tb_class;
--drop table tb_student;
--drop table tb_professor;
--drop table tb_department;
--
----테이블의 기본키 삭제하기
--alter table tb_department drop primary key;
----외부에서 기본키 설정하기 1
--alter table tb_department add primary key();
----외부에서 인덱스 네임과 기본키 주기
--alter table tb_department
--    add constraint pk_department primary key();
--
----내부에서 외래키 설정하기
--contraint fk_professor foreign key(department_no)
--    references tb_department(department_no);
----외부에서 외래키 설정하기1
--alter table tb_professor
--    add constraint fk_professor foreign key(department_no)
--    references tb_department(department_no);
--
--
----안쪽에 들어 있는 잘못된 내용의 값을 삭제해보자
--먼저 확인 절차
--SELECT * FROM TB_DEPARTMENT;
----안쪽 내용 지우기
--TRUNCATE TABLE TB_DEPARTMENT;
----오류 발생 역시 기본키와 외래키를 관계된 테이블 부터 지워 나가야 한다.
--SELECT * FROM TB_PROFESSOR;
--SELECT * FROM TB_STUDENT;
----학생 테이블 부터 지워 나가자.
--TRUNCATE TABLE TB_STUDENT;
----또 오류 발생  CASCADE를 추가해 보자. 실패
--TRUNCATE TABLE TB_STUDENT CASCADE;
--
----안되겠다. DELETE로 삭제 하기
--DELETE FROM TB_STUDENT;
--SELECT * FROM TB_STUDENT;
--
--DELETE FROM TB_PROFESSOR;
--SELECT * FROM TB_PROFESSOR;
--
--DELETE FROM TB_DEPARTMENT;
--SELECT * FROM TB_DEPARTMENT;
--
----잘못 들어간 내용의 값이 모두 삭제
----이제 INSERT INTO문을 신나게 써보자
----참조 구문
----실행 금지
----INSERT INTO EMP VALUES(
----    7369, 'SMITH',  'CLERK',     7902,
----    TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20
----);
----INSERT INTO 문도 생성 순서와 같은 순서로 작성 해야 에러 발생이 없다.
----테이블 생성 순서
----tb_department → tb_professor → tb_student → tb_class 
----→ tb_class_professor → tb_grade
--
----TB_DEPARTMENT 본 데이터 삽입
INSERT INTO TB_DEPARTMENT
    VALUES('001','국어국문학과','인문사회','Y',20
);

INSERT INTO TB_DEPARTMENT
    VALUES('002','영어영문학과','인문사회','Y',36
);
INSERT INTO TB_DEPARTMENT
    VALUES('003','사학과	','인문사회','Y',28
);
INSERT INTO TB_DEPARTMENT
    VALUES('004','철학과	','인문사회','Y',28
);
INSERT INTO TB_DEPARTMENT
    VALUES('005','법학과','인문사회','Y',36
);
INSERT INTO TB_DEPARTMENT
    VALUES('006','행정학과','인문사회','Y',36
);
INSERT INTO TB_DEPARTMENT
    VALUES('007','사물인터넷','공학',	'Y',25
);
INSERT INTO TB_DEPARTMENT
    VALUES('008','생태시스템공학과','공학','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('009','건축공학과','공학','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('010','토목공학과','공학','Y',50
);
INSERT INTO TB_DEPARTMENT
    VALUES('011','중어중문학과','인문사회','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('012','서반아어학과','인문사회','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('013','경제학과','인문사회','Y',60
);
INSERT INTO TB_DEPARTMENT
    VALUES('014','의학과	','의학','Y',50
);
INSERT INTO TB_DEPARTMENT
    VALUES('015','간호학과','자연과학','Y',60
);
INSERT INTO TB_DEPARTMENT
    VALUES('016','미술학과','예체능','Y',25
);
INSERT INTO TB_DEPARTMENT
    VALUES('017','산업디자인학과','예체능','Y',25
);
INSERT INTO TB_DEPARTMENT
    VALUES('018','체육학과','예체능','Y',	25
);
INSERT INTO TB_DEPARTMENT
    VALUES('019','음악학과','예체능',	'Y',20
);
INSERT INTO TB_DEPARTMENT
    VALUES('020','환경조경학과','자연과학','Y',50
);
INSERT INTO TB_DEPARTMENT
    VALUES('021','물리학과','자연과학','Y',20
);

--TB_PROFESSOR 내용 넣기
--참조 내용
--실행 금지
--INSERT INTO TB_PROFESSOR
--    VALUES('A805', '이정희', '640412-2794012', '대구 광역시 북구', 1
--);

--TB_PROFESSOR 본 데이터 내용
INSERT INTO TB_PROFESSOR
    VALUES('001','강혁','601004-1100528','대구시	중구','018'
);

INSERT INTO TB_PROFESSOR
    VALUES('002','김명석','880307-1794012','부산시해운대구','008'
);
INSERT INTO TB_PROFESSOR
    VALUES('003','김선정','750703-2100528','서울시 강남구','001'
);
INSERT INTO TB_PROFESSOR
    VALUES('004','김선희','551030-2159000','대전시 중구','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('005','남명길','701130-1139006','인천시 서구 석남동','012'
);
INSERT INTO TB_PROFESSOR
    VALUES('006','박강아름','681201-2134896','강원도 속초시','006'
);
INSERT INTO TB_PROFESSOR
    VALUES('007','박태환','711225-1235479','제주도 서귀포시','013'
);
INSERT INTO TB_PROFESSOR
    VALUES('008','박지평','860123-1334577','경상북도 고령군','019'
);
INSERT INTO TB_PROFESSOR
    VALUES('009','백양임','850205-2354885','전주시 한옥마을','012'
);
INSERT INTO TB_PROFESSOR
    VALUES('010','백은정','780503-2794012','충청도 청주시 상당구','018'
);
INSERT INTO TB_PROFESSOR
    VALUES('011','신영호','880605-1785402','경기도 의왕시','014'
);
INSERT INTO TB_PROFESSOR
    VALUES('012','이정희','660303-2323232','대구시  북구','007'
);
INSERT INTO TB_PROFESSOR
    VALUES('013','이미경','741016-2103506','전남 순천시 생목동','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('014','임진숙','640125-1143548','인천시 서구 석남동','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('015','제상철','900325-1231245','경기도 용인시','015'
);
INSERT INTO TB_PROFESSOR
    VALUES('016','주영상','900401-1894512','경기도 남양주시','021'
);
INSERT INTO TB_PROFESSOR
    VALUES('017','허문표','591102-1546846','강원도 속초시','012'
);
INSERT INTO TB_PROFESSOR
    VALUES('018','홍남수','540304-1112251','제주도 서귀포시','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('019','홍남술','540303-1112251','제주도 서귀포시','015'
);
INSERT INTO TB_PROFESSOR
    VALUES('020','박은정','780603-2794012','수원 청주시 상당구','020'
);
INSERT INTO TB_PROFESSOR
    VALUES('021','임해정','750409-2794012','대구',NULL
);

--학생 테이블에 데이터 넣기
--참조 사항 실행 금지
--INSERT INTO TB_STUDENT
--    VALUES('03', '1', '이영애', 02002112794012, '전주 광역시 중구',
--            TO_DATE('03-02-2018', 'DD-MM-YYYY'), 'N', 'A805'
--);

--TB_STUDENT 본 데이터 내용
INSERT INTO TB_STUDENT
    VALUES('A000001','001','한수현','901223-2123012','서울시 마포구',	
    TO_DATE('2010/03/01', 'YYYY/MM/DD'),	'Y','003'
);

INSERT INTO TB_STUDENT
    VALUES('A517178','001','한아름','901203-2223312','서울시 마포구',	
    TO_DATE('2010/03/01', 'YYYY/MM/DD'),	'N','003'
);

INSERT INTO TB_STUDENT
    VALUES('A112113','001','김고운','900222-2456478','강원도 속초시',	
    TO_DATE('2010/03/01','YYYY/MM/DD'),	'N','003'
);
INSERT INTO TB_STUDENT
    VALUES('A217006','002','고수현','811119-1122202','제주시 일도1동',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A413042','002','박건우','800109-1234202','제주시 일도1동',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A870001','003','릴희권','871222-1124648','서울 강서 등촌',
    TO_DATE('2001/03/01','YYYY/MM/DD'),	'Y', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A860001','004','황효종','871125-1129980','전남 순천시 생목',	
    TO_DATE('2001/03/01','YYYY/MM/DD'),	'Y', NULL
);
INSERT INTO TB_STUDENT
    VALUES('9911206','006','임충헌','780520-1232358','경남 울산시',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','006'
);
INSERT INTO TB_STUDENT
    VALUES('A352017','007','한효주','880101-2002358','대구 중구 남산',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A115270','007','송혜교','880202-2002358','대구 중구 ',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A417074','007','김태리','880404-2002358','포항 중구 남산',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A131046','007','김고은','880505-2002358','전주 중구 남산',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A331076','007','이지은','880707-2002358','충청 중구 남산',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A217005','008','고수현','821119-2122202','전주시 완산구',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('A241004','008','김희훈','920111-1788225','인천시 부평구 십정',
    TO_DATE('2010/03/01','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('9973003','008','김용근','800327-1345683','강원도 춘천시',	
    TO_DATE('1999/03/01','YYYY/MM/DD'), 'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('A473015','008','배용원','830608-1345881','대구시 남구 대명',	
    TO_DATE('2004/03/01','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('A517105','008','이신열','800201-1358482','대구시 북구 칠성',	
    TO_DATE('2005/03/01','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('9811251','009','김충원','780405-1335801','경북 포항시',	
    TO_DATE('1998/03/01','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A213046','011','서가람','900509-2358915','부여',
    TO_DATE('2010/03/01','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A211375','012','최허현','841102-1154425','전주시 덕진구',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','005'
);
INSERT INTO TB_STUDENT
    VALUES('A211376','012','김더미','851202-2354425','전주시 덕진구',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A211377','012','이희진','831101-2124425','울릉도 울릉시',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','005'
);
INSERT INTO TB_STUDENT
    VALUES('A313047','013','손건영','880606-1002358','강원 중구 남산',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','007'
);
INSERT INTO TB_STUDENT
    VALUES('A215247','015','이영애','880303-2002358','경주 중구 남산',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','015'
);
INSERT INTO TB_STUDENT
    VALUES('9919024','015','김계영','760822-2013589','경기도 용인시 수지',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','015'
);
INSERT INTO TB_STUDENT
    VALUES('9931310','019','조기현','780708-1528401','서울시 성동구',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','008'
);
INSERT INTO TB_STUDENT
    VALUES('9931311','019','양재영','780702-1323841','서울시 성동구',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','008'
);
INSERT INTO TB_STUDENT
    VALUES('9931312','019','조지선','780708-2528401','서울시 성동구',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','008'
);
INSERT INTO TB_STUDENT
    VALUES('9600011','020','김계영','750822-2012358','경기도 수원시 장안',	
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'Y', NULL
);
INSERT INTO TB_STUDENT
    VALUES('9600012','020','김말똥','750722-1012358','경기도 안산시 사동',	
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'N','020'
);
INSERT INTO TB_STUDENT
    VALUES('9600013','020','이더미','750621-1012358','제주도 서귀포시',	
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'N','020'
);
INSERT INTO TB_STUDENT
    VALUES('9600014','020','심더미','750512-2012358','경북  안동시',		
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'N','020'
);
INSERT INTO TB_STUDENT
    VALUES('A931310','021','조기현','941020-1534582','서울시 성동구',	
    TO_DATE('2014/03/01','YYYY/MM/DD'),	'N','016'
);

--PREATTENDING_CLASS_NO 외래키 설정을 드롭시키자
ALTER TABLE TB_CLASS
    DROP CONSTRAINT FK_CLASS1;
SELECT * FROM USER_CONSTRAINTS;

--TB_CLASS
INSERT INTO TB_CLASS
    VALUES('C0010001','001',NULL,'고전시가론개론','전공'
);  
INSERT INTO TB_CLASS
    VALUES('C0010002','001','C0010001',	'고전시가론특강',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C0010003','001','C0010001',	'국어어휘론특강',	'전공'	
);
INSERT INTO TB_CLASS
    VALUES('C0010004','001','C0010001',	'국어음성학연구',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C0070001','007',NULL,'IOT개론',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C3118101','007','C0070001',	'오라클','전공'
);
INSERT INTO TB_CLASS
    VALUES('C3118100','007','C0070001',	'파이썬','전공'
);
INSERT INTO TB_CLASS
    VALUES('C1753800','012',NULL,'서어방언학','전공'
);
INSERT INTO TB_CLASS
    VALUES('C1753400','012',NULL,'서어문체론','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0140005','014',NULL,'피부생리학','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0150005','015',NULL,'인간관계론','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0160001','016',NULL,'미술학개론','교양'
);
INSERT INTO TB_CLASS
    VALUES('C0160005','016','C0160001','드로잉',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C0160006','016','C0160001',	'미술시장,경영론','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0180005','018',NULL,'운동처방연구',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C0180006','018',NULL,'해부학실험','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0180007','018',NULL,'논문지도1','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0180008','018',NULL,'논문지도2','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0190000','019',NULL,'실용음악 개론','교양'
);
INSERT INTO TB_CLASS
    VALUES('C0190001','019',NULL,'클래식의 역사',	'교양'
);
INSERT INTO TB_CLASS
    VALUES('C0190002','019',NULL,'실용음악 1','전공'
);
INSERT INTO TB_CLASS
    VALUES('C0190003','019',NULL,'실용음악 2','전공'
);
INSERT INTO TB_CLASS
    VALUES('C3016200','020',NULL,'전통계승방법론','전공'
);
INSERT INTO TB_CLASS
    VALUES('C3081300','020',NULL,'조경계획방법론','전공'
);
INSERT INTO TB_CLASS
    VALUES('C3087400','020','C3016200',	'조경세미나',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C4139300','020','C3016200',	'환경보전및관리특론',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C4477600','020',NULL,'조경시학','전공'
);
INSERT INTO TB_CLASS
    VALUES('C5009300','020',NULL,'단지계획및설계스튜디오','전공'
);
INSERT INTO TB_CLASS
    VALUES('C2454000','020',NULL,'원예작물번식학특론',	'전공'
);
INSERT INTO TB_CLASS
    VALUES('C0210000','021',NULL,'중력','전공'
);

--TB_CLASS_PROFESSOR
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010001',	'003'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010002',	'003'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010003',	'003'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010004',	'003'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0070001',	'012'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3118100',	'012'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C1753800',	'009'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C1753400',	'009'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0140005',	'011'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0150005',	'015'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0160001',	'019'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0160005',	'019'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0160006',	'019'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180005',	'010'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180006',	'010'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180007',	'001'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180008',	'001'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3016200',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3081300',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3087400',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C4139300',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C4477600',	'020'	
);

SELECT * FROM TB_GRADE;
--TB_GRADE
INSERT INTO TB_GRADE
    VALUES('201001',	'C0010001',	'A000001',	1.8
);
INSERT INTO TB_GRADE
    VALUES('201002',	'C0010001',	'A000001',	1.9
);
INSERT INTO TB_GRADE
    VALUES('201101',	'C0010002',	'A000001',	2.0
);
INSERT INTO TB_GRADE
    VALUES('201102',	'C0010002',	'A000001',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201201',	'C0010003',	'A000001',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201202',	'C0010003',	'A000001',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201301',	'C0010004',	'A000001',	3.1
);
INSERT INTO TB_GRADE
    VALUES('201001',	'C0010001',	'A517178',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201002',	'C0010001',	'A517178',	2.9
);
INSERT INTO TB_GRADE
    VALUES('201101',	'C0010002',	'A517178',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201102',	'C0010002',	'A517178',	3.8
);
INSERT INTO TB_GRADE
    VALUES('201201',	'C0010003',	'A517178',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201202',	'C0010003',	'A517178',	3.8
);
INSERT INTO TB_GRADE
    VALUES('201301',	'C0010004',	'A517178',	4.1
);
INSERT INTO TB_GRADE
    VALUES('201001',	'C0010001',	'A112113',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201002',	'C0010001',	'A112113',	1.9
);
INSERT INTO TB_GRADE
    VALUES('201101',	'C0010002',	'A112113',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201102',	'C0010002',	'A112113',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201201',	'C0010003',	'A112113',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201202',	'C0010003',	'A112113',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201203',	'C0010003',	'A112113',	2.9
);
INSERT INTO TB_GRADE
    VALUES('201301',	'C0010004',	'A112113',	4.2
);
INSERT INTO TB_GRADE
    VALUES('201302',	'C0010004',	'A112113',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A352017',	4
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A352017',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A352017',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A352017',	4.5
);
INSERT INTO TB_GRADE
    VALUES('200401',	'C3118100',	'A352017',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A352017',	4.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A352017',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A352017',	4
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A115270',	3
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A115270',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A115270',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A115270',	3.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A115270',	3
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A115270',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A115270',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A115270',	3
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A417074',	2
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A417074',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A417074',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A417074',	2.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A417074',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A417074',	2.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A417074',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A417074',	4
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A131046',	3
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A131046',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A131046',	2.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A131046',	3.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A131046',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A131046',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A131046',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A131046',	3
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A331076',	4
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A331076',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A331076',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A331076',	3.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A331076',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A331076',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A331076',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A331076',	4
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0190000',	'9931310', 	4.5
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0190001',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0190001',	'9931310', 	4.2
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0190002',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0190002',	'9931310', 	4
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0190003',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0190003',	'9931310', 	4
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0190003',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0190000',	'9931311', 	2.5
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0190001',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0190001',	'9931311', 	2.2
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0190002',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0190002',	'9931311', 	2
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0190003',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0190003',	'9931311', 	2
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0190003',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0190000',	'9931312',	3.5
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0190001',	'9931312',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0190001',	'9931312',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0190002',	'9931312',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0190002',	'9931312', 	3
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0190003',	'9931312', 	3.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0190003',	'9931312',	3
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0190003',	'9931312', 	3.1
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600011',	2
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600011',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600011',	4
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600011',	2.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600011',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600011',	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600011',	4.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600011',	3.2
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600012',	3
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600012',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600012',	3
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600012',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600012',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600012',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600012',	3.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600012',	3.2
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600013',	2
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600013',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600013',	4
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600013',	2.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600013',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600013',	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600013',	2.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600013',	2.2
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600014',	3
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600014',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600014',	4
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600014',	2.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600014',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600014',	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600014',	3.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600014',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0150005',	'A215247',	3.9
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0150005',	'A215247',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C0150005',	'A215247',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C0150005',	'A215247',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200401',	'C0150005',	'A215247',	3.4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C0150005',	'A215247',	3.5
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0150005',	'9919024', 	2.8
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0150005',	'9919024', 	3.8
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0150005',	'9919024',	3.8
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0150005',	'9919024', 	2.8
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0150005',	'9919024',	3.8
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0150005',	'9919024',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201401',	'C0210000',	'A931310' ,	3.9
);
INSERT INTO TB_GRADE
    VALUES('201402',	'C0210000',	'A931310' ,	2.9
);
INSERT INTO TB_GRADE
    VALUES('201501',	'C0210000',	'A931310' ,	3.9
);
INSERT INTO TB_GRADE
    VALUES('201502',	'C0210000',	'A931310', 	3.9
);




