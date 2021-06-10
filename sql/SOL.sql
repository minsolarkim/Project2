CREATE TABLE MEMBER (
    userID VARCHAR(20) PRIMARY KEY,
    userPassword VARCHAR(20),
    userName VARCHAR(20),
    userGender  VARCHAR(20),
    userEmail  VARCHAR(20)
    );
COMMIT;
SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES('gildong', '123456', 'È«±æµ¿', '¿©ÀÚ', 'gildong@naver.com');

commit;


    