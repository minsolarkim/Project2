INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '제목1', '내용입니다용', '병결', '민솔', 'minsol', sysdate, sysdate, '원본 파일 이름', 1, 0, '업로드 파일 이름');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '탁구입니다.', '내용입니다용22', '조퇴', '탁구', 'kimtolkong', sysdate, sysdate, '탁구 사진.jpg', 1, 1, '나는 김탁구다');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '고개 아파요', '아파서 병원갑니다.', '병결', '김고개', 'hill', sysdate, sysdate, '김고개 진료확인서.jpg', 1, 1, 'hillstate.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '노랑입니다', '비대면 신청합니다', '비대면', '이노랑', 'rang', sysdate, sysdate, '노랑사진.jpg', 1, 1, 'rang.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '조퇴 신청합니다', '이슬 조퇴각', '조퇴', '김이슬', 'fresh', sysdate, sysdate, 'iseul.jpg', 1, 1, 'cham.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '지하철 연착으로 지각합니다', '경의중앙선 연착으로 인한 지각 ', '지각', '김마리', 'mari', sysdate, sysdate, 'kjline_news.jsp', 1, 1, 'news.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '비대면 신청', '개인 사정 ', '비대면', '김지코', 'zico', sysdate, sysdate, 'ziaco.jsp', 1, 1, 'ziaco_upload.jpg');



ALTER TABLE ATTENDANCE
    RENAME COLUMN COLUMN3 TO STATUS;
    
ALTER TABLE ATTENDANCE MODIFY A_TITLE VARCHAR2(50);
    
 GRANT  DELETE, INSERT, SELECT, UPDATE ON ATTENDANCE TO BITCAMP;
 
ALTER TABLE ATTENDANCE DROP COLUMN COLUMN4;

SELECT * FROM attendance ORDER BY A_IDX DESC;

SELECT *
		  FROM (SELECT ROWNUM R_NUM, ATT.*
		          FROM (SELECT *
		                  FROM ATTENDANCE
		                 ORDER BY A_IDX DESC
		               ) ATT
		       )
		 WHERE R_NUM BETWEEN 1 AND 3
         ;
         
SELECT COUNT(*) AS CNT FROM attendance;

SELECT A_IDX FROM ATTENDANCE ORDER BY A_IDX DESC;

SELECT * 
    FROM ATTENDANCE 
    WHERE A_IDX < 7 AND AVAILABLE = 1 
    AND ROWNUM <= 4
    ORDER BY A_IDX DESC 
    ;

SELECT SYSDATE, SYSTIMESTAMP FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL
;

SELECT *
		  FROM (SELECT ROWNUM R_NUM, ATT.*
		          FROM (SELECT *
		                  FROM ATTENDANCE
		                 ORDER BY A_IDX DESC
		               ) ATT
		       )
		 WHERE R_NUM BETWEEN 1 AND 4
         ;
         
SELECT COUNT(*) AS CNT FROM ATTENDANCE;

SELECT *
    FROM ATTENDANCE
    WHERE A_IDX = 2
    ;