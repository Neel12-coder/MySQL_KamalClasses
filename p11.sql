-- wamp to return yes if string starts with "ja" else return no.

create database if not exists thane28sep;

use thane28sep;

delimiter $$

drop procedure if exists p11 $$
create procedure p11(str varchar(100),out ans varchar(100))
begin
declare res boolean default false;
declare s1 varchar(5) default ' ';
select left(str,2) into s1;
if s1 = 'ja' then 
           set res = true;
end if;
if res = true then 
           set ans='yes';
else
           set ans='no';
end if;

end$$

delimiter ;