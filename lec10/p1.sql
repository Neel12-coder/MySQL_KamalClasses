delimiter $$

use thane5oct $$

drop procedure if exists p1$$

create procedure p1(id int , name varchar(30), sal double)
begin
declare dup_case condition for 1062;
declare oor_value condition for 1264;
declare null_value condition for 1048;

declare exit handler for null_value
select ' id cannot be null' as FAILURE;

declare exit handler for oor_value
select 'eid cannot be negative' as FAILURE;
declare exit handler for dup_case
select 'record already exists ' as FAILURE;

declare exit handler for SQLSTATE '12345'
select 'name cannot be null' as FAILURE;

declare exit handler for 1265
select 'name max length is 20' as FAILURE;

declare exit handler for SQLSTATE '23456'
select ' name should be of atleast 2 ' as FAILURE;

declare exit handler for SQLSTATE '34567'
select ' salary cannot be NULL' as FAILURE;

declare exit handler for SQLSTATE '45678'
select ' salary should be more than 8000' as FAILURE;

if name is null then
             signal SQLSTATE '12345';
end if;

if length(name) < 2 then
              signal SQLSTATE '23456';
end if;

if sal is null then
            signal SQLSTATE '34567';
end if;

if sal < 8000 then
            signal SQLSTATE '45678';
end if;

insert into emp values(id , name , sal);

select 'record inserted ' as SUCCESS;
end$$

delimiter ;