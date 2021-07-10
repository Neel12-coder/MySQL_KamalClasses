-- wamp to find the sum of first n pos nos.
delimiter $$

use thane5oct $$

drop procedure if exists p4 $$
create procedure p4(n int)
begin

declare sum int default 0;
declare i int default 1;

if n < 0 then 
         select  ' be +ve' as MSG;
else
         while i <= n do
                    set sum = sum + i;
                    set i = i + 1;
         end while;
         select sum as RESULT;
end if;

end $$

delimiter ;