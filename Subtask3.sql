select *  from  users;

select * from gold_users;

select first_name, last_name, city
from users
where user_id in (select uid 
				  from gold_users);

select first_name, last_name, city
from users
where user_id in (select uid 
				  from gold_users
                  where end_date >= curdate());

select *
from users, gold_users
where user_id = uid;

select first_name, last_name, city, points, end_date
from users, gold_users
where user_id = uid;

select first_name, last_name, city, points, end_date
from users, gold_users;

select first_name, last_name, city, points, end_date
from users, gold_users
where user_id = uid
and end_date <= curdate();

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u, gold_users g
where u.user_id = g.uid
and g.end_date <= curdate();

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u join gold_users g
where g.end_date <= curdate();

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u join gold_users g on u.user_id = g.uid
where g.end_date <= curdate();

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u join gold_users g on u.user_id = g.uid;

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u inner join gold_users g on u.user_id = g.uid;

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u left join gold_users g on u.user_id = g.uid;

select u.first_name, u.last_name, u.city, g.points, g.end_date
from gold_users g left join users u on u.user_id = g.uid;

select u.first_name, u.last_name, u.city, g.points, g.end_date
from gold_users g right join users u on u.user_id = g.uid;

select u.first_name, u.last_name, u.city, g.points, g.end_date
from users u right join gold_users g on u.user_id = g.uid;

select u.first_name, u.last_name, u.city, g.points, g.end_date
from gold_users g right join users u on u.user_id = g.uid
order by g.points desc;



















































































