INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '����1', '�����Դϴٿ�', '����', '�μ�', 'minsol', sysdate, sysdate, '���� ���� �̸�', 1, 0, '���ε� ���� �̸�');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, 'Ź���Դϴ�.', '�����Դϴٿ�22', '����', 'Ź��', 'kimtolkong', sysdate, sysdate, 'Ź�� ����.jpg', 1, 1, '���� ��Ź����');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '�� ���Ŀ�', '���ļ� �������ϴ�.', '����', '���', 'hill', sysdate, sysdate, '��� ����Ȯ�μ�.jpg', 1, 1, 'hillstate.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '����Դϴ�', '���� ��û�մϴ�', '����', '�̳��', 'rang', sysdate, sysdate, '�������.jpg', 1, 1, 'rang.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '���� ��û�մϴ�', '�̽� ����', '����', '���̽�', 'fresh', sysdate, sysdate, 'iseul.jpg', 1, 1, 'cham.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '����ö �������� �����մϴ�', '�����߾Ӽ� �������� ���� ���� ', '����', '�踶��', 'mari', sysdate, sysdate, 'kjline_news.jsp', 1, 1, 'news.jpg');

INSERT INTO ATTENDANCE 
    (A_IDX, A_TITLE, A_CONTENT, A_TYPE, A_WRITER, USER_ID, WRITE_DATE, MOD_DATE, ORI_NAME, AVAILABLE, STATUS, FILE_NAME )
    VALUES (A_SEQ.NEXTVAL, '���� ��û', '���� ���� ', '����', '������', 'zico', sysdate, sysdate, 'ziaco.jsp', 1, 1, 'ziaco_upload.jpg');



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