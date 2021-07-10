-- wamp to find sum of digits using ' while do'
delimiter $$

use thane5oct $$
drop procedure if exists p6$$

create procedure p6(n int)
begin
declare sum int default 0;
declare digit int default 0;

if n < 0 then 
       select 'be +ve' as MSG;
else
       while n > 0 do
                   set digit = n % 10;
                   set sum = sum + digit;
                   set n = n DIV 10;
       end while;
                  
       select sum as RESULT;
end if;
end $$

delimiter ;