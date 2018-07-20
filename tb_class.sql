--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-7岿-05-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TB_CLASS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TB_CLASS" 
   (	"CLASS_NO" VARCHAR2(10 BYTE), 
	"DEPARTMENT_NO" VARCHAR2(10 BYTE), 
	"PREATTENDING_CLASS_NO" VARCHAR2(10 BYTE), 
	"CLASS_NAME" VARCHAR2(30 BYTE), 
	"CLASS_TYPE" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.TB_CLASS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_CLASS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."PK_CLASS" ON "SCOTT"."TB_CLASS" ("CLASS_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TB_CLASS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TB_CLASS" ADD CONSTRAINT "PK_CLASS" PRIMARY KEY ("CLASS_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."TB_CLASS" MODIFY ("CLASS_NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TB_CLASS" MODIFY ("DEPARTMENT_NO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TB_CLASS" MODIFY ("CLASS_NO" NOT NULL ENABLE);
