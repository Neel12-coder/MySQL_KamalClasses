create database if not exists thane28sep;
use thane28sep;
delimiter $$
drop procedure if exists p13$$
create procedure p13(temp double, unit varchar(30), out res double)
begin

if unit = 'fah' then
      set res = round(temp * 1.8 +32,2);
else
      select round(((temp-32) /1.8),2) into res;
end if;

end$$
delimiter ;