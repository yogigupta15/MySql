use second_database;

select * from gold_users;

delimiter //
CREATE PROCEDURE get_gold_user()
BEGIN
select uid from gold_users;
END
// delimiter ;

show procedure status where db = 'second_database';

CALL `second_database`.`get_gold_user`();

call get_gold_user();

delimiter //
drop procedure if exists get_gold_user;
CREATE PROCEDURE get_gold_user()
BEGIN
declare userid int;
set userid = 10;
select * from gold_users
where uid = userid;
END
// delimiter ;

call get_gold_user();

delimiter //
drop procedure if exists get_gold_user;
CREATE PROCEDURE get_gold_user( in userid int)
BEGIN
select * from gold_users
where uid = userid;
END
// delimiter ;

call get_gold_user(10);

delimiter //
drop procedure if exists create_new_user;
create procedure create_new_user(in arg_user_id int,
							     in arg_first_name varchar(255),
                                 in arg_last_name varchar(255),
                                 in arg_email_id varchar(255),
                                 in arg_city varchar(255),
                                 in arg_phone varchar(255))
begin
insert into users values(arg_user_id, arg_first_name, arg_last_name, 
                         arg_email_id, arg_city, arg_phone);
end                         
// delimiter ;

show procedure status where db = 'second_database';

call create_new_user(100, 'Rick', 'Tallon',
                     'Rick_Tallon65@hotmail.com', 'Trenton',
                     '+ 555 222 2501');

select * from users;

call create_new_user(100, 'Renee', 'Bauer',
                     'renee_bauer70@hotmail.com', 'Pullman',
                     '+ 555 110 4321');

delimiter //
drop procedure if exists create_new_user;
create procedure create_new_user(in arg_user_id int,
							     in arg_first_name varchar(255),
                                 in arg_last_name varchar(255),
                                 in arg_email_id varchar(255),
                                 in arg_city varchar(255),
                                 in arg_phone varchar(255))
begin
if not exists(select user_id from users where user_id = arg_user_id) then
    insert into users values(arg_user_id, arg_first_name, arg_last_name, 
                         arg_email_id, arg_city, arg_phone);
else 
    select 'User Id Already in use. Please select another one.';
end if;    
end                         
// delimiter ;

call create_new_user(100, 'Renee', 'Bauer',
                     'renee_bauer70@hotmail.com', 'Pullman',
                     '+ 555 110 4321');
                     
call create_new_user(101, 'Renee', 'Bauer',
                     'renee_bauer70@hotmail.com', 'Pullman',
                     '+ 555 110 4321');

select * from users;

create table diamond_users(uid int, wallet_balance int);

delimiter //
drop procedure if exists create_new_user;
create procedure create_new_user(in arg_user_id int,
							     in arg_first_name varchar(255),
                                 in arg_last_name varchar(255),
                                 in arg_email_id varchar(255),
                                 in arg_city varchar(255),
                                 in arg_phone varchar(255),
                                 in arg_is_gold_users bool,
                                 in arg_is_diamond_users bool
                                 )
begin
if not exists(select user_id from users where user_id = arg_user_id) then
    insert into users(user_id, first_name, last_name, email_id, city, phone)
				values(arg_user_id, arg_first_name, arg_last_name, 
					   arg_email_id, arg_city, arg_phone);
end if;
if(arg_is_gold_users) then 
     insert into gold_users(uid, end_date, points)
                 values(arg_user_id, date_add(curdate(), interval 1 year), 0);
     if(arg_is_diamond_users) then 
         insert into diamond_users(uid, wallet_balance)
                     values(arg_user_id, 100);
     end if;
end if;     
if(arg_is_diamond_users) then 
	if not exists(select uid from gold_users where uid = arg_user_id) then
		select 'All diamond users need to be Gold Users.';
    end if;
end if;    
end                         
// delimiter ;

call create_new_user(666, 'Nikki','Flores', 
                     'nikki_flores77@hotmail.com', 'Savannah',
                     '+1 555 990 9321', false, true);
call create_new_user(777, 'Rob','Lawrence', 
                     'rob_lawrence80@hotmail.com', 'Charleston',
                     '+1 555 990 9322', false, false);

call create_new_user(889, 'Zachay','Macsen', 
                     'zacky_macsen80@hotmail.com','Santa Fe',
                     '+1 555 990 9323', true, true);
select * from users;
select * from gold_users;
select * from diamond_users;
call create_new_user(869, 'Zachay','Macsen', 
                     'zacky_macsen80@hotmail.com','Santa Fe',
                     '+1 555 990 9323', true, true);

select * from users;
select * from gold_users;
select * from diamond_users;                     
                     