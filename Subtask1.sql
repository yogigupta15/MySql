create table users(user_id int NOT NULL unique,
                   first_name varchar(255) NOT NULL,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) NOT NULL);
                   
describe users;

select * from users;

insert into users values(10, 'Claudia ', 'Sand' ,
                          'Claudia.Sand@hotmail.com', 'Hanover',
                          '+1 555 234 5678');

insert into users values(15, 'Neil', 'Parks' ,
                          'nail_parks82@hotmail.com', 'Pleasaton',
                          '+1 555 567 3456');                          

 insert into users values(20, 'Julio', 'Chavez' ,
                          'chavezj317@gmail.com', 'Savannah',
                          '+1 555 890 9898');

insert into users values(19, 'Gina', 'Ortiz' ,
                          'Gina_Ortiz68@hotmail.com', 'Hempstead',
                          '+1 555 963 8521');
 
 insert into users values(11, 'Raj', 'Chawanda' ,
                          'raj_chawanda@hotmail.com', 'Springfield',
                          '+1 555 963 8521');

insert into users values(31, 'Marcia', null ,
						 null,'Springfield',
						 '+1 555 963 8521');
                         
 create table users1(user_id int ,
                   first_name varchar(255) NOT NULL,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) NOT NULL,
                   primary key(user_id));  
                   
describe users1;
drop table users; 
drop table users1; 
create table users(user_id int ,
                   first_name varchar(255) NOT NULL,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) NOT NULL,
                   primary key(user_id)); 

describe users;
insert into users values(10, 'Claudia ', 'Sand' ,
                          'Claudia.Sand@hotmail.com', 'Hanover',
                          '+1 555 234 5678');    
insert into users values(15, 'Neil', 'Parks' ,
                          'nail_parks82@hotmail.com', 'Pleasaton',
                          '+1 555 567 3456');  

insert into users values(20, 'Julio', 'Chavez' ,
                          'chavezj317@gmail.com', 'Savannah',
                          '+1 555 890 9898'); 

insert into users values(19, 'Gina', 'Ortiz' ,
                          'Gina_Ortiz68@hotmail.com', 'Hempstead',
                          '+1 555 963 8521');
                          
insert into users values(11, 'Raj', 'Chawanda' ,
                          'raj_chawanda@hotmail.com', 'Springfield',
                          '+1 555 963 8521');

insert into users values(31, 'Marcia', null ,
						 null,'Springfield',
						 '+1 555 963 8521');

select * from users;
select last_name,city,phone from users;
select user_id, first_name, city from users;

select user_id, first_name, city 
from users
where city = 'Springfield';

alter table users 
modify column email_id varchar(255) unique;

describe users;

insert into users values(33, 'Chen', 'Line',
                         'Chen.LineUK@gmail.com','Mob',
                         '+1 555 111 0357');

select * from users;

alter table users 
modify column phone varchar(255) unique;

describe users;

alter table users 
modify column phone varchar(255) unique;

delete from users
where user_id = 31;

alter table users 
modify column phone varchar(255) unique;

delete from users
where user_id = 19;

insert into users values(19, 'Gina', 'Ortiz' ,
                          'Gina_Ortiz68@hotmail.com', 'Hempstead',
                          '+1 555 963 8351');   
                          
alter table users 
modify column phone varchar(255) unique;						
                          
describe users;                          
                          
show create table users;                          
                          
drop index phone on users;                          
                          
describe users; 						
                          
show create table users;                          
                          
insert into users values(34,'Charles', 'Lin',
                         'chlin@qenel@gmail.com', 'Moab',
                         '+1 555 111 0357');
                          
update users
set phone = '+1 555 111 9999'
where user_id = 34;                          
                          
update users
set email = 'Gina@qenel.com'
where first_name = 'Gina';                          
                          
create table users_summary As 
select user_id, first_name, city
from users;                        
                          
 show tables;                         
describe users_summary;

select * from users_summary;  
 
 alter table users_summary
 add primary key(user_id);
  
describe users_summary;  
  
 drop table users_summary; 
 show tables;     
  
 alter table users
 DROP column phone;
 
 describe users;
 select * from users;
 
 drop table users;
  
  
  
  
  
  
  
  
  
  
  