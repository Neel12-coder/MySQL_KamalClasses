-- wasp to count number of students failed

delimiter $$
use thane12oct

drop function if exists f3$$
create function f3() returns int deterministic
begin
declare c int default 0;
declare r int default 0;
declare c1 cursor for select rno from student;

open c1;
               begin
               declare exit handler for 1329 begin end;
               aa: loop
                            fetch c1 into r;
                            set c = c+1;
               end loop;
               end;
close c1;
return c;
end$$
delimiter ;
