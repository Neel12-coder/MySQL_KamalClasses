-- wamp to check wheather the string is pallindrome or not
delimiter $$
use thanesep21$$
drop procedure if exists p8$$
create procedure p8(marks int)
begin 
declare grade varchar(30) default ' ';

if marks>=70 then set grade="DISTINCTION" ;
elseif marks>=60 then set grade="FIRST CLASS";
elseif marks>=50 then set grade="SECOND CLASS";
else set grade="FAIL";
end if;

select grade as RESULT;

end$$

delimiter ;
