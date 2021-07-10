use thane12oct;
drop table if exists student;
drop table if exists student_audit;
drop trigger if exists t10;
drop trigger if exists t11;
drop trigger if exists t12;
drop trigger if exists t13;
drop trigger if exists t14;

create table student ( rno int primary key, name varchar(30) not null,
marks int not null );

create table student_audit ( rno int, name varchar(30) , marks int,
operation varchar(30) , op_time timestamp);

delimiter $$
create trigger t10 before insert on student 
for each row
begin
if ( new.marks<0 || new.marks>100) then
signal SQLSTATE '12345'
set message_text = "marks out of range";
end if;
end$$

create trigger t11 before update on student 
for each row
begin
if ( new.marks<0 || new.marks>100) then
signal SQLSTATE '12345'
set message_text = "marks out of range";
end if;
end$$

create trigger t12 after insert on student 
for each row
begin
insert into student_audit values(new.rno ,
new.name,new.marks ,'insert', now());
end$$

create trigger t13 after update on student 
for each row
begin
insert into student_audit values(old.rno ,
old.name,old.marks ,'before insert', now());
insert into student_audit values(new.rno ,
new.name,new.marks ,'after insert', now());
end$$

create trigger t14 after delete on student 
for each row
begin
insert into student_audit values(old.rno ,
old.name,old.marks ,'delete', now());
end$$

delimiter ;