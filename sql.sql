create database cognizant;
use cognizant;
select * from worker;

select first_name as worker_name from worker;
select upper(first_name) from worker;
select distinct department from worker;
select substring(first_name,1,3) from worker;
select instr(first_name,'a') from worker where first_name='amitabh';
select rtrim(first_name) from worker;
select ltrim(first_name) from worker;
select distinct length(department) from worker;
select replace(first_name,'a','A') from worker;
select concat(first_name,last_name) as complete_name from worker;


select * from worker order by first_name ASC;
select * from worker  order by first_name ASC , department desc;
select * from worker where first_name in ('vipul','satish');
select * from worker where first_name not in ('vipul','satish');
select * from worker where first_name like '%a%';
select * from worker where first_name like '%a';
select * from worker where first_name like '_____h';
select * from worker where salary between 100000 and 500000;
select * from worker where joining_date=2014-02;


select count(*) from worker where department='admin';
select first_name,last_name from worker where salary >=50000 and salary<= 100000;
select department,count(worker_id) no_of_workers from worker group by department order by no_of_workers desc;
select * from worker where worker_id in (select worker_ref_id from title where worker_title='manager');
select first_name,salary,count(*) from worker group by first_name,salary having count(*)>1;
select * from worker where mod(worker_id,2) <> 0;
select * from worker where mod(worker_id,2) <> 1;
create table worker_copy select * from worker;










