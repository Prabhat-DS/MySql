show databases
create database mysql_task
use mysql_task
create table if not exists b_data (
age int ,
job varchar(30) , 
marital varchar(30) , 
education varchar(30),
`default` varchar(30),
balance int,
housing varchar(30) , 
loan varchar(30) ,
contact varchar(30) , 
`day` int , 
`month` varchar(30) , 
duration int , 
campaign int , 
pdays int , 
previous int , 
poutcome varchar(30),
y varchar(30))

insert into b_data values 
(44,"technician","single","secondary","no",29,"yes","no","unknown",5,"may",151,1,-1,0,"unknown","no"),
(33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",1506,"yes","no","unknown",5,"may",92,1,-1,0,"unknown","no"),
(33,"unknown","single","unknown","no",1,"no","no","unknown",5,"may",198,1,-1,0,"unknown","no"),
(35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
(28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
(42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
(58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
(43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
(41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
(29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
(58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
(57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
(51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
(45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
(60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no")


-- with this data try to fine out sum of balance 
-- Try to find out avarage of balance 
-- try to find out who is having a min balance 
-- try to find out who is having a mazxmim balance 
-- try to prepare a list of all the person who is having loan 
-- try to find out average balance for all the people whose job role is admin 
-- try to find out a record  without job whose age is below 45 
-- try to find out a record where education is primarty and person is jobless
-- try to find of a record whose bank account is having a negative balance 
-- try to find our a record who is not having house at all along with there balance

-- with this data try to fine out sum of balance
select sum(balance) from b_data

-- Try to find out avarage of balance 
select avg(balance) from b_data

-- try to find out who is having a min balance 
select min(balance) from b_data

-- try to find out who is having a mazxmim balance 
select min(balance) from b_data

-- try to prepare a list of all the person who is having loan
 select * from b_data
 create view loan_yes as select age, job, marital, balance, contact from b_data where loan ='yes'
 select * from loan_yes
 
  create view loan_yes1 as select * from b_data where loan ='yes'
  select * from loan_yes1
 
-- try to find out average balance for all the people whose job role is admin 
select avg(balance) from b_data where job = 'admin'

-- try to find out a record  without job whose age is below 45 
 select * from b_data where job = 'unknown' and age < 45
 
-- try to find out a record where education is primary and person is jobless
select * from b_data where education = 'primary' and job = 'unknown' 
 
-- try to find of a record whose bank account is having a negative balance
insert into b_data values (28,"engineer","single","graduation","no",-50,"yes","yes","unknown",5,"may",219,1,-1,0,"unknown","no")
select * from b_data where balance < 0 

-- try to find our a record who is not having house at all along with there balance
select * from b_data where balance <= 0 and housing = 'no' 