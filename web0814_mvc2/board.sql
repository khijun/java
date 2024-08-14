CREATE  SEQUENCE SEQ_BOARD;
DROP    SEQUENCE SEQ_BOARD;
DROP    TABLE BOARD;
DROP    TABLE REPLY;
DROP    TABLE MEMBER;
    
    create table board (
    num     int primary key,
    writer  varchar2(20),
    title   varchar2(60),
    content VARCHAR2(600),
    regtime varchar2(20),
    hits    NUMBER(10)
);

SELECT  *
  FROM  (   SELECT  E.*, ROWNUM AS RN
              FROM  (   SELECT  *
                          FROM  BOARD
                         ORDER  BY NUM DESC) E)
 WHERE  RN BETWEEN 3 AND 6;

insert into board values(SEQ_BOARD.NEXTVAL, 'ȫ�浿', '�� 1', '���� ���� 1', '2017-07-30 10:10:11', 0);
insert into board values(SEQ_BOARD.NEXTVAL, '�̼���', '�� 2', '���� ���� 2', '2017-07-30 10:10:12', 0);
insert into board values(SEQ_BOARD.NEXTVAL, '������', '�� 3', '���� ���� 3', '2017-07-30 10:10:13', 0);
insert into board values(SEQ_BOARD.NEXTVAL, '�����', '�� 4', '���� ���� 4', '2017-07-30 10:10:14', 0);
insert into board values(SEQ_BOARD.NEXTVAL, '����', '�� 5', '���� ���� 5', '2017-07-30 10:10:15', 0);
insert into board values(SEQ_BOARD.NEXTVAL, '�����', '�� 6', '���� ���� 6', '2017-07-30 10:10:16', 0);
insert into board values(SEQ_BOARD.NEXTVAL, 'ȫ�浿', '�� 7', '���� ���� 7', '2017-07-30 10:10:17', 0);
insert into board values(SEQ_BOARD.NEXTVAL, '�̼���', '�� 8', '���� ���� 8', '2017-07-30 10:10:18', 0);