use thane12oct;

drop table if exists ca;
drop table if exists sa;
drop trigger if exists buca;

create table ca(accno int primary key, name varchar(10), balance double);
create table sa(accno int primary key, name varchar(10), balance double);

delimiter $$
create trigger buca before update on ca for each row
begin
if ( new.balance < 2000) then
signal SQLSTATE '77889'
set message_text = " balance shud be min 2000";
end if;
end $$
delimiter ;

insert into ca values(101 , 'TCS' , 5000);
insert into sa values(101 , 'TCS' , 2500);

select * from ca;
select * from sa;

drop procedure if exists p20;

delimiter $$
create procedure p20(ano int, amo double)
begin 
declare issue boolean default false;
declare continue handler for SQLException
begin
set issue = true;
end;
start transaction;
update sa set balance = balance + amo where accno = ano;
update ca set balance = balance - amo where accno = ano;

if  ! issue then
                  commit;
                   select 'transaction success ' as MSG;
else
                   rollback;
                    select 'transaction failure ' as MSG;
end if;
end$$
delimiter ;