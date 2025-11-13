-- bai 1

create database CompanyDB;
create table companyDB(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);

-- bai 2

alter table companyDB
add hiredate date,
add salary int;

-- bai 3

SELECT * FROM companydb.companydb;

-- bai 4

update companydb 
set employee_id = 4800
where employee_id = 2;
SET SQL_SAFE_UPDATES = 0;
update companydb
set hiredate = '2021-08-01'
where First_Name = 'bui_duy';

-- bai 5

delete from companydb
where employee_id =1;

delete from companydb
where salary < 5000;

-- bai 6

select *from companydb;


select *from companydb
where salary > 5000;

select *from companydb
order by hiredate desc;

-- bai 7

select employee_id,
count(*) as so_luong_nhan_vien
from companydb
group by employee_id;

alter table companydb
add ten_bo_phan varchar(100);

select ten_bo_phan,
count(*) as so_luong_nhan_vien
from companydb
group by ten_bo_phan;

select ten_bo_phan,
avg(salary) as luong_tb
from companydb
group by ten_bo_phan;

select ten_bo_phan,
avg(salary) as luong_tb
from companydb
group by ten_bo_phan
having avg(salary)>5000;
