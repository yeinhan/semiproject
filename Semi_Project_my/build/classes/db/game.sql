DROP TABLE USERS;
DROP TABLE REVIEW;
DROP TABLE GAME;
DROP TABLE URL;

DROP SEQUENCE USER_NO;
DROP SEQUENCE GAME_NO;
DROP SEQUENCE RV_NO;
DROP SEQUENCE URL_GAME_NO;

CREATE SEQUENCE USER_NO NOCACHE;
CREATE SEQUENCE GAME_NO NOCACHE;
CREATE SEQUENCE RV_NO NOCACHE;
CREATE SEQUENCE URL_GAME_NO;


-- 유저 번호, 아이디, 비밀번호, 이름, 이메일, 가입여부, COUNT=리뷰 작성 수
CREATE TABLE USERS (
   	USER_NO NUMBER PRIMARY KEY,
   	USER_ID VARCHAR2(50) UNIQUE NOT NULL,
   	USER_PW VARCHAR2(50) NOT NULL,
   	USER_NAME VARCHAR2(50) NOT NULL,
   	USER_EMAIL VARCHAR2(50) UNIQUE NOT NULL,
   	USER_ENABLED VARCHAR2(2) NOT NULL,
   	USER_COUNT NUMBER NOT NULL,
	CONSTRAINT USER_ENABLED_CHK CHECK( USER_ENABLED IN ('Y', 'N'))
);
SELECT * FROM USERS;

UPDATE USERS SET USER_PW='1234' WHERE USER_ID= '아이디1';

-- 리뷰 번호, 리뷰에 작성한 유저 아이디, 게임 번호, 별점, 내용, 작성일자, 플랫폼 번호
-- RV_USER_ID는 USERS 테이블의 USER_ID의 컬럼을 참조
-- RV_GAME_NO는 GAME 테이블의 GAME_NO의 컬럼을 참조
-- RV_PLATFORM GAME 테이블의 GAME_PLATFORM의 컬럼을 참조 
CREATE TABLE REVIEW (
   RV_NO NUMBER PRIMARY KEY,
   RV_USER_ID VARCHAR2(50) NOT NULL,
   RV_GAME_NO NUMBER NOT NULL,
   RV_STAR NUMBER NOT NULL,
   RV_CONTENT VARCHAR2(100) NOT NULL,
   RV_DATE DATE,
   RV_PLATFORM NUMBER
);

SELECT * FROM REVIEW
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',2,5,'재밌당',SYSDATE,1);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',2,5,'재밌당1',SYSDATE,1);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',2,5,'재밌당2',SYSDATE,1);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',2,5,'재밌당3',SYSDATE,1);

INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',3,5,'재밌당',SYSDATE,2);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',3,5,'재밌당2',SYSDATE,2);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',3,5,'재밌당3',SYSDATE,2);

INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',5,5,'재밌당',SYSDATE,3);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',5,5,'재밌당2',SYSDATE,3);
INSERT INTO REVIEW VALUES(RV_NO.NEXTVAL,'아이디1',5,5,'재밌당3',SYSDATE,3);

DELETE REVIEW;

SELECT * FROM GAME ORDER BY GAME_PLATFORM;
-- 게임 번호, 별 평점, 플랫폼, 게임이름, 회사, 장르, 출시일자, 요약(content)
CREATE TABLE GAME(
   GAME_NO NUMBER PRIMARY KEY,
   GAME_STARAVG NUMBER,
   GAME_PLATFORM NUMBER CHECK (GAME_PLATFORM IN ('1', '2', '3', '4')),
   GAME_NAME VARCHAR2(50),
   GAME_COMPANY VARCHAR2(50),
   GAME_GENRE NUMBER,
   GAME_RELEASE DATE,
   GAME_CONTENT VARCHAR2(4000)
);

 --MAIN / CONTENT PAGE 에 필요한 URL
CREATE TABLE URL(
	URL_GAME_NO NUMBER PRIMARY KEY, 
	MAIN_IMAGE VARCHAR2(4000),  
	IMAGE1 VARCHAR2(4000), 
	IMAGE2 VARCHAR2(4000),
	IMAGE3 VARCHAR2(4000),
	IMAGE4 VARCHAR2(4000),
	VIDEO1 VARCHAR2(4000),
	VIDEO2 VARCHAR2(4000),
	VIDEO3 VARCHAR2(4000),
	VIDEO4 VARCHAR2(4000),
	VIDEO_TITLE1 VARCHAR2(100),
	VIDEO_TITLE2 VARCHAR2(100),
	VIDEO_TITLE3 VARCHAR2(100),
	VIDEO_TITLE4 VARCHAR2(100),
	ARTICLE1 VARCHAR2(4000),
	ARTICLE2 VARCHAR2(4000),
	ARTICLE3 VARCHAR2(4000),
	ARTICLE_TITLE1 VARCHAR2(500),
	ARTICLE_TITLE2 VARCHAR2(500),
	ARTICLE_TITLE3 VARCHAR2(500),
	ARTICLE_SUMMARY1 VARCHAR2(500),
	ARTICLE_SUMMARY2 VARCHAR2(500),
	ARTICLE_SUMMARY3 VARCHAR2(500),
	A_IMAGE1 VARCHAR2(4000),
	A_IMAGE2 VARCHAR2(4000),
	A_IMAGE3 VARCHAR2(4000),
	CONSTRAINT GAME_NO_FK FOREIGN KEY (URL_GAME_NO) REFERENCES GAME(GAME_NO)
);

SELECT * FROM GAME;

SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT, USER_ID
FROM REVIEW A
FULL OUTER JOIN GAME B 
ON A.RV_GAME_NO = B.GAME_NO 
FULL OUTER JOIN USERS C
ON A.RV_USER_ID = C.USER_ID
WHERE GAME_PLATFORM=2
AND USER_ID = '아이디1'
AND RV_NO IS NOT NULL 

SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT,RV_PLATFORM ,RV_DATE  
FROM REVIEW A 
FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO 
FULL OUTER JOIN USERS C ON A.RV_USER_ID = C.USER_ID 
WHERE GAME_PLATFORM=3 AND USER_ID = '아이디1' ORDER BY RV_NO