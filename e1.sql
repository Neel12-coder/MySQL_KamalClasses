drop table if exists student_bkup;

create table student_bkup like student;

delimiter $$
drop event if exists e1$$
create event e1 on schedule every 1 minute do
begin
delete from student_bkup;
insert into student_bkup select * from student;
end$$

delimiter ;