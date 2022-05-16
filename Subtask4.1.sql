create database third_database;
use third_database;

create table users(user_id int ,
                   first_name varchar(255) NOT NULL,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) NOT NULL,
                   primary key(user_id)); 

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

insert into users values(31, 'Marcia', 'Lin' ,
						 'marcia_lin20@hotmail.com','Springfield',
						 '+1 555 963 8521');
                         
insert into users values(33, 'Chen', 'Line',
                         'Chen.LineUK@gmail.com','Mob',
                         '+1 555 111 0357');

insert into users values(34,'Charles', 'Lin',
                         'chlin@qenel@gmail.com', 'Moab',
                         '+1 555 111 0357');

create table gold_users(uid int primary key,
                        end_date date not null,
                        points float);

insert into gold_users values(10, '2020-11-01', 342);                        
insert into gold_users values(11, '2019-10-03', 241.2);                     
insert into gold_users values(15, '2019-12-01', 93);                        
insert into gold_users values(19, '2023-01-13', 13.8); 
insert into gold_users values(31, '2021-04-29', 279.1);
insert into gold_users values(34, '2021-04-29', 179.1);

alter table gold_users
add constraint fk_uid
foreign key (uid) references users(user_id);

select * from gold_users;

show triggers from third_database;

create trigger autoEnrollGold
after insert 
on users 
for each row 
insert into gold_users(uid, end_date, points)
            values(new.user_id,
				date_add(curdate(), interval 1 year), 0);


show triggers from third_database;

insert into users values(40,'Alen', 'Alford',
                         'alen_alford@hotmail.com', 'Wisconsin',
                         '+1 555 211 2562');
select * from users;
select * from gold_users;

drop trigger autoEnrollGold;

show triggers from third_database;

create table diamond_users(uid int primary key,
                            wallet_balance int,
                            foreign key(uid) references gold_users(uid));

describe diamond_users;

delimiter //
create trigger enrollDiamondUsersToGold
before insert 
on diamond_users
for each row
if exists (select user_id from users where user_id = new.uid) then 
    if not exists (select uid from gold_users where uid = new.uid) then 
            insert into gold_users
                        values(new.uid, date_add(curdate(), interval 1 year), 0);
	end if;
end if;    
// delimiter ;

show triggers from third_database;

select * from users;

select * from gold_users;

select * from diamond_users;

insert into diamond_users(uid, wallet_balance) values(31, 10);
insert into diamond_users(uid, wallet_balance) values(33, 10);

select * from diamond_users;

select * from gold_users;

insert into diamond_users(uid, wallet_balance) values(11, 72);

select * from diamond_users;

insert into diamond_users(uid, wallet_balance) values(30, 72);


show create table diamond_users;

alter table diamond_users
drop foreign key diamond_users_ibfk_1 ;

alter table diamond_users
add constraint diamond_fk_uid
foreign key (uid) references gold_users(uid)
on delete cascade;

show create table diamond_users;

select * from diamond_users;

insert into diamond_users(uid, wallet_balance) values(19, 40);

select * from diamond_users;

delete from gold_users where uid = 11;

select * from diamond_users;

select * from gold_users;

update gold_users
set uid = 19
where uid = 31;

alter table diamond_users
drop foreign key diamond_fk_uid;

alter table diamond_users
add constraint diamond_fk_uid
foreign key (uid) references gold_users(uid)
on delete cascade
on update cascade;

update gold_users
set uid = 19
where uid = 31;

select * from gold_users;

select * from diamond_users;













