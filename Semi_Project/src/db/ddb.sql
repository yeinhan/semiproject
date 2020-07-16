DROP TABLE USERS;
DROP TABLE REVIEW;
DROP TABLE GAME;
DROP TABLE URL;

DROP SEQUENCE USER_NO;
DROP SEQUENCE GAME_NO;
DROP SEQUENCE RV_NO;

CREATE SEQUENCE USER_NO NOCACHE;
CREATE SEQUENCE GAME_NO NOCACHE;
CREATE SEQUENCE RV_NO NOCACHE;


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

INSERT INTO USERS
VALUES(USER_NO.NEXTVAL,'USER1','USER1','유저1','USER@NAVER.COM','Y',1);


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
   RV_PLATFORM NUMBER,
  CONSTRAINT USER_ID_FK FOREIGN KEY (RV_USER_ID) REFERENCES USERS (USER_ID)
);
SELECT * FROM REVIEW ORDER BY RV_PLATFORM;
SELECT * FROM REVIEW WHERE RV_PLATFORM=2;

INSERT INTO REVIEW
VALUES(RV_NO.NEXTVAL, 'USER1', 5, 3, '게임3의 리뷰 2',SYSDATE, 3);	

--플랫폼1리뷰


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

--플랫폼 1 --게임1 게임2
--플랫폼2  --게임3 게임4


INSERT INTO GAME
VALUES(GAME_NO.NEXTVAL, 3 , 4, '게임4-1', '회사1',2, SYSDATE, '게입입니다.');


SELECT * FROM GAME ;
WHERE GAME_PLATFORM=1
ORDER BY GAME_NO;

SELECT REVIEW.RV_STAR, REVIEW.RV_CONTENT, GAME.GAME_NAME 
FROM REVIEW, GAME 
WHERE GAME.GAME_PLATFORM=(SELECT  REVIEW.RV_PLATFORM FROM REVIEW WHERE RV_PLATFORM=1);

--플랫폼별 리뷰 불러오기
SELECT RV_NO,GAME_NAME, RV_STAR, RV_CONTENT FROM REVIEW A FULL OUTER JOIN GAME B ON A.RV_GAME_NO = B.GAME_NO WHERE GAME_PLATFORM=1 AND RV_NO IS NOT NULL;

SELECT * FROM REVIEW;
DELETE FROM REVIEW WHERE RV_NO=1;

DELETE 