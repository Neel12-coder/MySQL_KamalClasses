-- wamp to check wheather the string is pallindrome or not
delimiter $$
use thanesep21$$
drop procedure if exists p10$$
create procedure p10(year int)
begin 
declare res varchar(30) default ' ';
declare b1 boolean default false;
declare b2 boolean default false;
set b1 = (year  % 100 =0) and (year  %  400 =0);
set b2 = (year  % 100 != 0) and (year  %  4 =0);
if b1 or b2 then
             set res  = 'yes' ;
else
             set res  = 'no' ;
end if;

select res as RESULT;
end$$

delimiter ;
 