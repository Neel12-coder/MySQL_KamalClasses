-- wamp to perform addition of two numbers
delimiter $$
use thanesep21$$
drop procedure if exists p2$$
create procedure p2(n1 int, n2 int)
begin
declare ans1 int default 0;
declare ans2 int default 0;

select  n1 + n2 as RESULT1;

set ans1 = n1 + n2;
select  ans1 as RESULT2;

select  n1 + n2 into ans2;
select  ans2 as RESULT3;

end$$

delimiter ;

-- bif -> build in functions 
-- by default always in , if u desire write out for result.