

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

SELECT title, category.name as language FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category on film_category.category_id = category.category_id
JOIN language ON language.language_id = file.language_id;