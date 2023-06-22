

SELECT title, category, release_year FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category on film_category.category_id = category.category_id;

SELECT title, category.name, release_year FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category on film_category.category_id = category.category_id
WHERE category.name IN ('Action', 'Comedy', 'Family');

SELECT category.name, COUNT(*) as category_count FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category on film_category.category_id = category.category_id
GROUP BY category.name;

SELECT category.name, COUNT(*) as category_count FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category on film_category.category_id = category.category_id
GROUP BY category.name
HAVING COUNT(*) BETWEEN 60 AND 68;

SELECT title, category.name AS category, language.name AS language
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category on film_category.category_id = category.category_id
JOIN language ON language.language_id = film.language_id;

SELECT customer.customer_id,first_name,last_name,title,(return_date - rental_date) AS rental_duration
FROM customer 
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id;