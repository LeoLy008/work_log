-- 回礼红包balance log, op_type = 'tc_fb_redpackage'
select * from member_balance_log where op_type = 'tc_fb_redpackage';

-- 回礼红包用户消息 type = 6, order_id = redpackge.rp_id, 对应订单要查询用户的订单
select * from app_messages a where a.type = 6;

select * from user_redpackage;

select order_id, order_type, from_type, pay_status, payed, final_amount, giver_member_id, recipient_member_id 
from orders a where order_id in (select order_id from member_balance_log where op_type = 'tc_fb_redpackage');

