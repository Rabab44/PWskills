USE mavenmovies;

/*
1. Identify the primary keys and foreign keys in mavenmovies database. Discuss the differences.
*/
-- Solution:
-- The major difference between primary key and foreign key is Primary keys uniquely identify a record in a table, while foreig keys establish a language between tables.
select * from information_schema.key_column_usage;

/*
2. List all details of actors
*/
-- Solution:
select * from actor;

/*
3. List all customer information from database.
*/
-- Solution:
select * from customer;

/*
4. List different countries.
*/
-- Solution:
select distinct country from country;

/*
5. Display all active customers.
*/
-- Solution:
select customer_id,first_name,last_name,email from customer where 'active'=1;

/*
6. List of all rental IDs for customer with ID 1. 
*/
-- Solution:
select rental_id from rental where customer_id=1;

/*
7. Display all the films whose rental duration is greater than 5. 
*/
-- Solution:
select film_id, title from film where rental_duration >5;

/*
8. List the total number of films whose replacement cost is greater than $15 and less than $20. 
*/
-- Solution:
select count(*) from film where replacement_cost > 15 and replacement_cost < 20;

/*
9. Display the count of unique first names of actors. 
*/
-- Solution:
Select count(Distinct first_name) from actor;

/*
10. Display the first 10 records from the customer table. 
*/
-- Solution:
select * from customer limit 10;

/*
11. Display the first 3 records from the customer table whose first name starts with 'b'. 
*/
-- Solution:
select * from customer where first_name like 'b%' limit 3;

/*
12. Display the names of first 5 movies which are rated as G.
*/
-- Solution:
select title from film where rating = 'G' limit 5;

/*
13. Find all customers whose first name starts with 'a'. 
*/
-- Solution:
select * from customer where first_name like "a%";

/*
14. Find all customers whose first name ends with 'a'. 
*/
-- Solution:
select * from customer where first_name like "%a";

/*
15. Display the list of 4 cities which start and end with 'a'.
*/
-- Solution:
select city from city where city like 'a%%a' limit 4;

/*
16. Find all customers whose first name have "NI" in any position. 
*/
-- Solution:
select first_name from customer where first_name like "%ni%";

/*
17. Find all customers whose first name have "r" in the second position.
*/
-- Solutiom:
select first_name from customer where first_name like "_%r";

/*
18. Find all customers whose first name starts with "a" and are at least 5 characters in length. 
*/
-- Solution:
select first_name from customer where first_name like 'a___&';

/*
19. Find all customers whose first name starts with "a" and ends with "o". 
*/
-- Solution:
select first_name from customer where first_name like 'a%o';

/*
20. Get the film with pg and pg-13 rating using IN operator. 
*/
-- Solution:
select title from film where rating IN ('pg','pg-13');

/*
21. Get the films with length between 50 to 100 using between operator. 
*/
-- Solution:
select * from film where length between 50 and 100;

/*
22. Get the top 50 actors using limit operator. 
*/
-- Solution:
select * from actor limit 50;

/*
23. Get the distinct film id's from inventory table. 
*/
-- Solution:
select distinct film_id from inventory;