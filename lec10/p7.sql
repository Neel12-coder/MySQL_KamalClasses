-- wamp to find sum of n +ve integer using ' repeat until'
delimiter $$

use thane5oct $$
drop procedure if exists p7 $$

create procedure p7(n int)
begin
declare rev int default 0;
declare digit int default 0;

if n < 0 then 
       select 'be +ve' as MSG;
else
       repeat 
              set digit = n % 10;
              set rev = rev  * 10  +  digit;
              set n = n DIV 10; 
       until n < 0
       end repeat;
       select rev as RESULT;
end if;
end $$

delimiter ;