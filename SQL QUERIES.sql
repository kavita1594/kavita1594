create table emp
(
	eid int primary key identity(1,1),
	ename varchar(50) not null,
	age int check(age>18),
	departmentname varchar(40) not null,
	salary decimal check(salary>0)

);
select * from emp;

create table dept
(
	did int primary key,
	dname varchar(50) not null,
	eid int foreign key references emp(eid)
);

select * from dept;

/*insert*/

insert into emp values('kavita',20,'comp',25000);
insert into emp values('amar',21,'civil',26000);
insert into emp values('shree',22,'ENTC',27000);
insert into emp values('rushi',23,'IT',28000);
insert into emp values('sachin',24,'Mech',29000);

/*update*/

update emp set departmentname='Networkin',salary=20000 where eid=5

/*Active*/

alter table emp
add Active int 
update emp set active =0 where  eid=4 
update emp set active =1 where eid=4

/*DQL*/

select ename,salary,Active from emp 
select * from emp where eid=1
select ename,salary from emp where eid =1

alter table emp
add city varchar(20)

update emp set city='pune' where eid=1
update emp set city='nagpur' where eid=2
update emp set city='pune' where eid=3
update emp set city='ahmednagar' where eid=4
update emp set city='mumbai' where eid=5

/*Distinct*/

select distinct city from emp

/*operators*/

select * from emp where salary<25000
select * from emp where salary<=25000
select * from emp where salary>25000
select * from emp where salary>=25000
select * from emp where salary between 25000 and 27000
select * from emp where city like 'p%'
select * from emp where city like 'a%'
select * from emp where city like '%r'
select * from emp where city like '%n%'
select * from emp where city like '___e'
select * from emp where city like 'm_____'
select * from emp where city like '[pn]%'
select * from emp where city like '[a-m]%'
select * from emp where city not like '[pm]%'
select * from emp where city in ('pune','mumbai')
select * from emp where city not in ('pune','mumbai')
select * from emp where eid in (2,3,4)
select * from emp where eid not in(2,3)

/*order by*/

select * from emp
order by ename

select * from emp
order by ename desc

select TOP 1 * from emp
order by salary desc

select TOP 3 * from emp
order by salary desc

/*NULL*/

select * from emp where city is not  NULL