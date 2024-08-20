CREATE SEQUENCE SEQ_MEMBER;

SELECT	*
  FROM	MEMBER;

create table member(
memberNo number(5) primary key,
joinDate date,
name varchar2(20),
id varchar2(20) unique,
pw varchar2(20),
);

INSERT	INTO MEMBER
VALUES(SEQ_MEMBER.NEXTVAL, SYSDATE, 'NAME', 'test', '12345');