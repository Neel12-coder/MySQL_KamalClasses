-- wamp to check wheather the string is pallindrome or not
delimiter $$
use thanesep21$$
drop procedure if exists p6$$
create procedure p6(s1 varchar(20))
begin 
declare res varchar(40) default ' ';
if  s1 = reverse(s1) then 
             set res = "YES " ;
else 
             set res = 'no';
end if;
select res as RESULT;

end$$

delimiter ;
