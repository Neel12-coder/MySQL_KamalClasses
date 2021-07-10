/* wamp to find area  of circle */
delimiter $$
use thanesep21$$
drop procedure if exists p5$$
create procedure p5(INOUT info double)
begin 
select round(3.14159 * power(info,2), 3) into info;
end $$

delimiter ;
