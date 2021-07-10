-- wamf to count the number of students in thane

delimiter $$
use thane12oct$$

drop function if exists f1$$

create function f1() returns int deterministic
begin 
declare c int default 0;
select count(*) into c
from student
where location = 'thane';
return c;
end$$
delimiter ;