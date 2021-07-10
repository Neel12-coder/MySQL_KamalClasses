-- wasp to count number of students failed

delimiter $$
use thane12oct

drop function if exists f4$$
create function f4() returns int deterministic
begin
declare ma int default 0;
declare m int default 0;
declare c1 cursor for select marks from student;

open c1;
               begin
               declare exit handler for 1329 begin end;
               aa: loop
                            fetch c1 into m;
                            if m >ma then 
                                          set ma = m; 
                            end if;
               end loop;
               end;
close c1;
return ma;
end$$
delimiter ;
