-- wamp to find sum of n +ve integer using ' repeat until'
delimiter $$

use thane5oct $$
drop procedure if exists p5 $$

create procedure p5(n int)
begin
declare sum int default 0;
declare i int default 1;

if n < 0 then 
       select 'be +ve' as MSG;
else
       repeat 
              set sum = sum + i;
              set i = i + 1;
       until i > n
       end repeat;
       select sum as RESULT;
end if;
end $$

delimiter ;