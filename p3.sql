-- wamp to perform addition of two numbers
delimiter $$
use thanesep21$$
drop procedure if exists p3$$
create procedure p3(IN n1 int, IN n2 int, OUT ans int)
begin 
select n1 + n2 into ans;
end$$

delimiter ;
 