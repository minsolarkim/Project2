SELECT * FROM ATTENDANCE ORDER BY A_IDX DESC;

SELECT * 
    FROM ATTENDANCE 
    WHERE AVAILABLE = 1
    ORDER BY A_IDX DESC
    ;

--ROWNUM ��� + available 1�� �͸� ���̰� 
SELECT *
		  FROM (SELECT ROWNUM R_NUM, ATT.*
		          FROM (SELECT *
		                  FROM ATTENDANCE
                          WHERE AVAILABLE = 1
		                 ORDER BY A_IDX DESC
		               ) ATT
		       )
		 WHERE R_NUM BETWEEN 1 AND 10
;

--�������� �˻�
SELECT A_IDX, A_TYPE, A_TITLE, A_WRITER, WRITE_DATE, MOD_DATE, STATUS
    FROM ATTENDANCE 
    WHERE A_TITLE LIKE '%��%'
    ORDER BY WRITE_DATE DESC
    ;
    
--�������� �˻�
SELECT A_IDX, A_TYPE, A_TITLE, A_WRITER, WRITE_DATE, MOD_DATE, STATUS
    FROM ATTENDANCE 
    WHERE A_CONTENT LIKE '%��%'
    ORDER BY WRITE_DATE DESC
    ;
    
--�̸����� �˻�
SELECT A_IDX, A_TYPE, A_TITLE, A_WRITER, WRITE_DATE, MOD_DATE, STATUS
    FROM ATTENDANCE 
    WHERE A_WRITER LIKE '%���%'
    ORDER BY WRITE_DATE DESC
    ;

--�ۼ��� �ֽż� or ������ �� 


--������ �ֽż� !!

--�ۼ��� �������� �������� ����
SELECT A_IDX, A_TYPE, A_TITLE, A_WRITER, WRITE_DATE, MOD_DATE, STATUS
    FROM ATTENDANCE 
    WHERE WRITE_DATE BETWEEN TO_DATE('2021-06-05', 'yyyy-MM-dd') AND TO_DATE('2021-06-06', 'yyyy-MM-dd')
    ORDER BY WRITE_DATE DESC
    ;

--Ȯ�� �ȵ� status = 0 
SELECT A_IDX, A_TYPE, A_TITLE, A_WRITER, WRITE_DATE, MOD_DATE, STATUS
    FROM ATTENDANCE 
    WHERE STATUS = 0
    ORDER BY A_IDX DESC
    ;

    