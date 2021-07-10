/* wamp to find area of circle  */
delimiter $$
use thanesep21$$
drop procedure if exists p4$$
create procedure p4(rad double)
begin

declare res1 double default 0.0;
declare res2 double default 0.0;

set res1 = 3.14159 * rad * rad;
set res2 = 3.14159 *power(rad,2);

select concat("res1 =", round(res1, 2), " res2 = ", round(res2 , 4)) as RESULT;

end$$

delimiter ;


