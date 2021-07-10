/*  wamp to find even and odd */
delimiter $$
use thanesep21$$
drop procedure if exists p7$$
create procedure p7(num int)
begin 
declare res varchar(30) default ' ';
if  num%2 = 0 then
                  set res = "EVEN";
else
                  set res='ODD';
end if;
select res as RESULT;

end$$

delimiter ;
