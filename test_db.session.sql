-- 1. How many actors are there with the last name ‘Wahlberg’?
-- There are 2 actors with the last name 'Wahlberg'.
SELECT last_name,COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name
ORDER BY last_name DESC LIMIT 1;

-- 2. How many payments were made between $3.99 and $5.99?
-- There were 5607 payments made between $3.99 and $5.99.
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- The store has 8 film_id #350 as the most of.
SELECT film_id,COUNT(film_id) as Most_Films 
FROM inventory
GROUP BY film_id
ORDER BY Most_Films DESC LIMIT 1;

-- 4. How many customers have the last name ‘William’?
-- There are 0 customers with the last name 'William'.
SELECT last_name, COUNT(last_name)
FROM customer
WHERE last_name = 'William'
GROUP BY last_name
ORDER BY last_name DESC LIMIT 1;

-- 5. What store employee (get the id) sold the most rentals?
-- Staff_id #1 sold the most rentals.
SELECT staff_id,COUNT(staff_id) as Who_Sold_Most
FROM rental
GROUP BY staff_id
ORDER BY Who_Sold_Most DESC LIMIT 1;

-- 6. How many different district names are there?
-- There are 378 different district names
SELECT COUNT(DISTINCT district) as Differ_District_Names
FROM address;

-- 7.What film has the most actors in it? (use film_actor table and get film_id)
-- Film_id #508 has the most actors in it.
SELECT film_id,COUNT(film_id) as Film_With_Most_Actors
FROM film_actor
GROUP BY film_id
ORDER BY Film_With_Most_Actors DESC LIMIT 1;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- There are 13 customers in store_id #1 whose last name ends with 'es'.
SELECT (store_id),(last_name)
FROM customer
WHERE store_id = '1' and last_name LIKE '%es'
GROUP BY last_name,store_id
ORDER BY last_name DESC;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--There are 290 payment amounts.
SELECT amount
FROM payment
Where customer_id between 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

-- 10.Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
--There are 5 rating categories and PG-13 has the most movies total.
SELECT rating, COUNT(rating) as amount_in_movies
FROM film
GROUP BY rating
ORDER BY amount_in_movies DESC;



