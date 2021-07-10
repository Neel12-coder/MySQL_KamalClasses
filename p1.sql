delimiter $$
use thanesep21$$
drop procedure if exists p1$$
create procedure p1()
begin
select 'hello world' as MSG;
end$$

delimiter ;
