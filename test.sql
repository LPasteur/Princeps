CREATE TABLE tb_department (
    department_no     VARCHAR2(10) NOT NULL PRIMARY KEY,
    department_name   VARCHAR2(20) NOT NULL,
    category          VARCHAR2(20),
    open_yn           CHAR(1),
    capacity          NUMBER
);

CREATE TABLE tb_student (
    student_no           VARCHAR2(10) NOT NULL,
    department_no        VARCHAR2(10) NOT NULL,
    student_name         VARCHAR2(30) NOT NULL,
    student_ssn          VARCHAR2(14),
    student_address      VARCHAR2(100),
    entrance_date        DATE,
    absence_yn           CHAR(1),
    coach_professor_no   VARCHAR2(10),
--   제약조건 : constraint
    CONSTRAINT pk_student PRIMARY KEY ( student_no ),
    CONSTRAINT fk_student FOREIGN KEY ( department_no )
        REFERENCES tb_department ( department_no ),
    CONSTRAINT fk_student1 FOREIGN KEY ( coach_professor_no )
        REFERENCES tb_professor ( professor_no )
);

CREATE TABLE tb_class (
    class_no                VARCHAR2(10) NOT NULL,
    department_no           VARCHAR2(10) NOT NULL,
    preattending_class_no   VARCHAR2(10),
    class_name              VARCHAR2(30) NOT NULL,
    class_type              VARCHAR2(10),
    CONSTRAINT pk_class PRIMARY KEY ( class_no ),
    CONSTRAINT fk_class FOREIGN KEY ( department_no )
        REFERENCES tb_department ( department_no )
);

CREATE TABLE tb_class_professor (
    class_no       VARCHAR2(10) NOT NULL,
    professor_no   VARCHAR2(10) NOT NULL,
    CONSTRAINT pk_class_professor PRIMARY KEY ( class_no,professor_no ),
    CONSTRAINT fk_class_professor FOREIGN KEY ( class_no )
        REFERENCES tb_class ( class_no ),
    CONSTRAINT fk_class_professor1 FOREIGN KEY ( professor_no )
        REFERENCES tb_professor ( professor_no )
);

CREATE TABLE tb_professor (
    professor_no        VARCHAR2(10) NOT NULL,
    professor_name      VARCHAR2(30) NOT NULL,
    professor_ssn       VARCHAR2(14),
    professor_address   VARCHAR2(100),
    department_no       VARCHAR2(10),
    CONSTRAINT pk_professor PRIMARY KEY ( professor_no ),
    CONSTRAINT fk_professor FOREIGN KEY ( department_no )
        REFERENCES tb_department ( department_no )
);

CREATE TABLE tb_grade (
    term_no      VARCHAR2(10) NOT NULL,
    class_no     VARCHAR2(10) NOT NULL,
    student_no   VARCHAR2(10) NOT NULL,
    point        NUMBER(3,2),
    CONSTRAINT pk_tb_grade PRIMARY KEY ( term_no,class_no,student_no ),
    CONSTRAINT fk_tb_grade FOREIGN KEY ( class_no )
        REFERENCES tb_class ( class_no ),
    CONSTRAINT fk_tb_grade1 FOREIGN KEY ( student_no )
        REFERENCES tb_student ( student_no )
);
--alter table tb_class_professor add primary key(class_no,professor_no);
--alter table tb_class_professor add foreign key(class_no)
--   references tb_class(class_no);
--alter table tb_class_professor add foreign key(professor_no)
--   references tb_professor(professor_no);

SELECT
    *
FROM
    tab;

SELECT
    *
FROM
    tb_class;

CREATE TABLE sample (
    no     NUMBER(5,0) NOT NULL PRIMARY KEY,
    name   VARCHAR2(20) NOT NULL,
    tel    VARCHAR2(20) NOT NULL,
    etc    VARCHAR2(20) NOT NULL
);