create table gold_users(uid int primary key,
                        end_date date not null,
                        points float);
                        
describe gold_users;                        
insert into gold_users values(10, '2020-11-01', 342);                        
insert into gold_users values(11, '2019-10-03', 241.2);                     
insert into gold_users values(15, '2019-12-01', 93);                        
insert into gold_users values(19, '2023-01-13', 13.8);                        
insert into gold_users values(21, '2021-04-29', 279.1);                        
                        
select * from gold_users;                        

select uid from gold_users;

select first_name ,last_name, user_id
from users
where user_id in (select uid 
			      from gold_users);

select first_name ,last_name, user_id
from users
where user_id in (select uid, end_date
			      from gold_users);

select * 
from gold_users
where uid not in (select user_id
				 from users);

alter table gold_users
add constraint fk_uid
foreign key (uid) references users(user_id);

delete from gold_users
where uid = 21;

alter table gold_users
add constraint fk_uid
foreign key (uid) references users(user_id);

describe gold_users;

show create table gold_users;

select user_id 
from users;

insert into gold_users values(31, '2021-04-29', 279.1);

select * from gold_users;

select * 
from gold_users
where points > 150;

select * 
from gold_users
where points < 150;

select * 
from gold_users
where points <= 93;

select * 
from gold_users
where points >= 93;

select * 
from gold_users
where points >= 93
and points < 300;

select * 
from gold_users
where points between 93 and 300;

select * 
from gold_users
where end_date <= '2021-01-01';

select * 
from gold_users
where end_date >= '2021-01-01';

select curdate();

select current_time();

select * 
from gold_users
where end_date < curdate();

select * 
from gold_users
where end_date > curdate();

select * 
from gold_users;

select * 
from gold_users
order by points;

select * 
from gold_users
order by points desc;

select * 
from gold_users
order by points desc
limit 3;

select * 
from gold_users
order by points desc
limit 1;

select * 
from gold_users
where end_date <= curdate()
order by end_date;

select * 
from gold_users
where end_date >= curdate()
order by end_date;

insert into gold_users values(34, '2021-04-29', 179.1);

select * 
from gold_users
order by end_date desc, points desc;

select * 
from users
order by last_name, first_name;















                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        