show databases;
create database second_database;
show databases;
use second_database;
show tables;
create table users(user_id int ,
                   first_name varchar(255) NOT NULL,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) NOT NULL,
                   primary key(user_id));  
show tables;
describe users;
insert into users values(10, 'Claudia ', 'Sand' ,
                          'Claudia.Sand@hotmail.com', 'Hanover',
                          '+1 555 234 5678');
insert into users values(20, 'Julio', 'Chavez' ,
                          'chavezj317@gmail.com', 'Savannah',
                          '+1 555 890 9898');
insert into users values(15, 'Neil', 'Parks' ,
                          'nail_parks82@hotmail.com', 'Pleasaton',
                          '+1 555 567 3456');                            
insert into users values(19, 'Gina', 'Ortiz' ,
                          'Gina_Ortiz68@hotmail.com', 'Hempstead',
                          '+1 555 963 8521');
 insert into users values(11, 'Raj', 'Chawanda' ,
                          'raj_chawanda@hotmail.com', 'Springfield',
                          '+1 555 945 251');
insert into users values(31, 'Marcia', 'Lin' ,
						 'Marcia_line89@hotmail.com','Springfield',
						 '+1 555 963 8521');
update users
set phone = '+1 555 253 2599'
where user_id = 31;        

insert into users values(34,'Chen', 'Lin',
                         'chlin@qenel@gmail.com', 'Moab',
                         '+1 555 111 0357');

select * from users;

select first_name
from users;

select first_name, last_name ,city,user_id
from users
where city = 'Moab';

select first_name, last_name ,city,user_id
from users
where last_name='Lin' and city = 'Moab';

select first_name, last_name ,city,user_id
from users
where last_name='Lin' or city = 'Moab';

select first_name, last_name ,city,user_id
from users
where last_name !='Lin';

select first_name, last_name ,city,user_id
from users
where first_name like 'Chen';

select first_name, last_name ,city,user_id
from users
where first_name like 'C%';

select first_name, last_name ,city,user_id
from users
where first_name like 'c%';

select first_name, last_name ,city,user_id
from users
where first_name like 'ch%';

select first_name, last_name ,city,user_id
from users
where first_name like 'c%n';

select first_name, last_name ,city,user_id
from users
where first_name like 'c%a%';

select first_name, last_name ,city,user_id
from users
where first_name like '%l';

select first_name, last_name ,city,user_id
from users
where first_name not like 'c%';

select first_name, last_name ,city,user_id
from users
where city = 'Springfield'
or city = 'Pleasaton'
or city = 'Hempstead';

select first_name, last_name ,city,user_id
from users
where city in ( 'Springfield','Pleasaton','Hempstead');

select first_name, last_name ,city,user_id
from users
where city not in ( 'Springfield','Pleasaton','Hempstead');

select first_name, last_name ,city,user_id
from users
where city not in ( 'Springfield','Pleasaton','Hempstead')
and first_name like 'ch%';













