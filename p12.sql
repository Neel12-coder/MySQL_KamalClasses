-- wamp to give discount to the user , if random number > 8 , discount=30% , else if random number > 5, discount = 20% , else discount = 10%

create database if not exists thane28sep;

use thane28sep;

delimiter $$

drop procedure if exists p13 $$
create procedure p13(price double, out finalprice double)
begin
declare r int default 0;
select ceiling(rand()*10) into r;
if r>8 then
     set finalprice= round(price*0.70,2);
elseif r>5 then
     set finalprice = round(price*0.8,2);
else
     set finalprice = round(price*0.9,2);
end if;

end$$
delimiter ;