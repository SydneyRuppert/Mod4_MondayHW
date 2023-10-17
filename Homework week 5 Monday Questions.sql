--1. How many actors are there with the last_name 'Wahlberg'- The anwser is 2: Darl and Nick
select first_name,last_name 
from actor
where last_name LIKE 'Wahlberg'
group by first_name, last_name;

--2. How many payments were made between $3.99 and $5.99? 2 customer_id's: 183 and 1
select customer_id,amount
from payment
where amount between 3.99 and 5.99;
---3. What Film does the store have the most of?
select store_id, count(film_id)
from inventory 
group by store_id 
order by store_id desc;
--4. How many customers have the last_name 'William'?- There are none
select first_name,last_name
from customer
where last_name = 'William';
--5. What store employee(get the id) sold the most rentals?
select staff_id, sum(amount)
from payment 
group by staff_id, amount
order by amount desc;
--6. How many district names are there? 377
select district
from address 
group by district 
order by district desc;
--7. What film has the most actors in it?(use film_actor table and get film_id)- film_id 508 has the most
select film_id, count(*) actor_id
from film_actor
group by film_id
having count (*) > 0
order by actor_id desc;
--8. From store_id 1, how many customers have a last name ending with 'es'?(use the customer table)
select store_id,count(*)last_name
from customer 
where last_name like '%es'
group by store_id 
order by store_id asc;
--9. How many payment amounts(4.99,5.99,etc) had a number of rentals above 250 for 
--customers with ids between 380 and 430 (use group by and having>250)
select customer_id, count(*) rental_id
from payment
where customer_id between 380 and 430
group by amount, customer_id  
having count(rental_id)>250
order by amount Desc;
--10. Within the film table, how many rating categories are there? 
--And what rating has the most movies total?PG-13 HAS 120,007
select rating, sum(film_id) 
from film 
group by rating;





