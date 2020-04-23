insert into board(bno, title, writer, content)
select board_seq.nextval, title, writer, content
from board;
commit;

SELECT board_seq.nextval
FROM dual;

SELECT board_seq.currval
FROM dual;

insert into reply(rno, bno, replytext,replyer,regdate,updatedate )
select reply_seq.nextval,bno,replytext, replyer, regdate, updatedate
from reply;
commit;

select *
from board
where bno=243;