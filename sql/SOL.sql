CREATE TABLE MEMBER (
    userID VARCHAR(20) PRIMARY KEY,
    userPassword VARCHAR(20),
    userName VARCHAR(20),
    userGender  VARCHAR(20),
    userEmail  VARCHAR(20)
    );
COMMIT;
SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES('gildong', '123456', 'ȫ�浿', '����', 'gildong@naver.com');

commit;


    