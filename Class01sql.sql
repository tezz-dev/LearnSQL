-- clauses:

-- select -> what do you want to retrieve 
-- from -> from which table do you want to retrieve 
-- where -> to filter the records you want to retrieve

-- 1. retrieve all records from the actor table

select actor_id, first_name, last_name, last_update 
from sqlpro.actor;

select *
from sqlpro.actor;

-- 2. retrieve first_name and last_name of all the records from the actor table

select first_name, last_name
from sqlpro.actor;

-- 3. compose a field called full_name which will be 
--    concatenation of first_name + ' ' + last_name 
--    and retrieve the same for all the records from the actor table

select concat(concat(first_name, ' '), last_name) as full_name
from sqlpro.actor;

-- 4. retieve the first 5 records from the table

select *
from sqlpro.actor
where rownum <= 5;

select *
from sqlpro.actor
where actor_id <= 5;

-- 5. retrieve the records with actor id 2, 4, or 6 from the table

select *
from sqlpro.actor
where actor_id = 2 or actor_id = 4 or actor_id = 6;

select *
from sqlpro.actor
where actor_id in (2, 4, 6);

-- 6. retrieve the records with actor id 6-10 from the table actor

select *
from sqlpro.actor
where actor_id = 6 or actor_id = 7 or actor_id = 8 or actor_id = 9 or actor_id = 10;

select *
from sqlpro.actor
where actor_id in (6, 7, 8, 9, 10);

select *
from sqlpro.actor
where actor_id >= 6 and actor_id <= 10;