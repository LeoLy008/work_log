select * from quiz_warehouse a where a.qwh_id = 1;

select count(distinct member_id), count(*) from quiz_user_result;

-- 查询 qwh_id == 1 的问题集，答案及答案对应的下一道题目
select a.qs_id,
b.quiz_id -19 as qsIDq, b.question,
a.quiz_id -19 as qsID, a.content,
c.quiz_id -19 as qsIDnq, c.question
from quiz_selections a 
left join quiz_warehouse b on b.quiz_id = a.quiz_id
left join quiz_warehouse c on c.quiz_id = a.next_quiz_id
where a.quiz_id in (select quiz_id from quiz_warehouse where qwh_id = 1);



