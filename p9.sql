-- wamp to check wheather the string is pallindrome or not
delimiter $$
use thanesep21$$
drop procedure if exists p9$$
create procedure p9(marks int)
begin 
declare grade varchar(30) default ' ';
case
when marks>=70 then set grade="DISTINCTION" ;
when marks>=60 then set grade="FIRST CLASS";
when marks>=50 then set grade="SECOND CLASS";
else set grade="FAIL";
end case;

select grade as RESULT;

end$$

delimiter ;
