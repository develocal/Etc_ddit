--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD_DAEJEON
--------------------------------------------------------

  CREATE TABLE "JAVA"."BOARD_DAEJEON" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(150 BYTE), 
	"WRITER" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"VIEWCNT" NUMBER DEFAULT 0, 
	"CONTENT" VARCHAR2(3200 BYTE), 
	"UPDATEDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JAVA.BOARD_DAEJEON
SET DEFINE OFF;
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (1,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),1,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (2,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (3,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (4,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (5,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (6,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (7,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (8,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (9,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (10,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (11,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (12,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (13,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (14,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (15,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (16,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (17,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (18,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (19,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (20,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (21,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (22,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (23,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (24,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (25,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (26,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (27,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (28,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (29,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (30,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (31,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (32,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (33,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (34,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (35,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (36,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (37,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (38,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (39,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (40,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (41,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (42,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (43,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (44,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (45,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (46,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (47,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (48,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (49,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (50,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (51,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (52,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (53,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (54,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (55,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (56,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (57,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (58,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (59,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (60,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (61,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (62,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (63,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (64,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (65,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (66,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (67,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (68,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (69,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (70,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (71,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (72,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (73,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (74,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (75,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (76,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (77,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (78,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (79,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (80,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (81,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (82,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (83,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (84,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (85,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (86,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (87,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (88,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (89,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (90,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (91,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (92,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (93,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (94,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (95,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (96,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (97,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (98,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (99,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (100,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (101,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (102,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (103,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (104,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (105,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (106,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (107,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (108,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (109,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (110,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (111,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (112,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (113,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (114,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (115,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (116,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (117,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (118,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (119,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (120,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (121,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (122,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (123,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (124,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (125,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (126,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (127,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (128,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (129,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (130,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (131,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (132,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (133,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (134,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (135,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (136,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (137,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (138,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (139,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (140,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (141,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (142,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (143,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (144,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (145,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (146,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (147,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (148,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (149,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (150,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (151,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (152,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (153,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (154,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (155,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (156,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (157,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (158,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (159,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (160,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (161,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (162,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (163,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (164,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (165,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (166,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (167,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (168,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (169,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (170,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (171,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (172,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (173,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (174,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (175,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (176,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (177,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (178,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (179,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (180,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (181,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (182,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (183,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (184,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (185,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (186,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (187,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (188,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (189,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (190,'test1','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test1입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (191,'test2','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test2입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (192,'test3','qwe123',to_date('20/04/28','RR/MM/DD'),0,'test3입니다.',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (193,'q','qwe123',to_date('20/04/28','RR/MM/DD'),0,'<p>q</p>',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (194,'a','qwe123',to_date('20/04/28','RR/MM/DD'),0,'<p><img src="/getImg.do?fileName=2ebc927ed5db403c9345118c507127ff.jpg" style="width: 25%;"></p><p>aaa</p>',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (195,'a','qwe123',to_date('20/04/28','RR/MM/DD'),1,'<p>aaa<img src="/getImg.do?fileName=430d4f8b286a48a7ba5a87ca19db4047.jpg" style="width: 50%;"></p>',to_date('20/04/28','RR/MM/DD'));
Insert into JAVA.BOARD_DAEJEON (BNO,TITLE,WRITER,REGDATE,VIEWCNT,CONTENT,UPDATEDATE) values (196,'a','qwe123',to_date('20/04/28','RR/MM/DD'),9,'<p>a<img src="/getImg.do?fileName=0965c0219cd7449eacb0ebd479320fe5.jpg" style="width: 50%;"></p>',to_date('20/04/28','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index BOARD_DEAJEON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA"."BOARD_DEAJEON_PK" ON "JAVA"."BOARD_DAEJEON" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOARD_DAEJEON
--------------------------------------------------------

  ALTER TABLE "JAVA"."BOARD_DAEJEON" ADD CONSTRAINT "BOARD_DEAJEON_PK" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA"."BOARD_DAEJEON" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARD_DAEJEON
--------------------------------------------------------

  ALTER TABLE "JAVA"."BOARD_DAEJEON" ADD CONSTRAINT "BOARD_DEAJEON_FK1" FOREIGN KEY ("WRITER")
	  REFERENCES "JAVA"."MEMBER_DAEJEON" ("ID") ON DELETE CASCADE ENABLE;
