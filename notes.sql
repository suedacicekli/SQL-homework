-- ÖDEV 1 --
 SELECT title, description FROM film ;
 SELECT * FROM film WHERE length > 60 AND length <75;
 SELECT * FROM film WHERE rental_rate = 0.99 AND (replacement_cost =12.99 OR replacement_cost =28.99);
 SELECT last_name  FROM customer WHERE first_name = 'Mary';
 SELECT * FROM film WHERE NOT length > 50 AND NOT ( rental_rate =2.99 OR rental_rate = 4.99);

--

-- ÖDEV 2

SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99 ;
SELECT first_name , last_name FROM actor WHERE first_name IN ('Penelope' , 'Nick' ,  'Ed') ;
SELECT * FROM film WHERE (rental_rate IN (0.99 , 2.99 , 4.99)) AND (replacement_cost IN (12.99, 15.99, 28.99 ));


-- ÖDEV 3

SELECT country FROM country WHERE country LIKE 'A%a';
SELECT country FROM country WHERE country LIKE '_____%n';
SELECT title FROM film WHERE  title ILIKE '%t%t%t%t%' ;
SELECT * FROM film WHERE title LIKE 'C%' AND length >90 AND rental_rate = 2.99 ;

-- ÖDEV 4
SELECT DISTINCT replacement_cost FROM film;
SELECT COUNT(DISTINCT replacement_cost) FROM film ;
--SELECT title FROM film WHERE title LIKE 'T%' and rating = 'G';
SELECT COUNT(title) FROM film WHERE title LIKE 'T%' and rating = 'G' ;
-- SELECT country FROM country WHERE country LIKE '_____'; 5 karakterden oluşan countryler
SELECT COUNT(country) FROM country WHERE country LIKE '_____'; -- 5 karakterden oluşan countrylerin sayısını verir.
-- SELECT * FROM city WHERE city ILIKE '%r';  r veya R ile biten city isimlerini verir.
SELECT COUNT(*) FROM city WHERE city ILIKE '%r';  -- r veya R ile biten city isimlerinin sayısını verir.


-- ÖDEV5
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length ASC OFFSET 5 LIMIT 5;
SELECT * FROm customer WHERE store_id=1 ORDER BY last_name DESC LIMIT 4;

-- ÖDEV 6
SELECT AVG(rental_rate) FROM film;
SELECT COUNT(title) FROM film WHERE title ILIKE 'c%';
SELECT rental_rate,length FROM film WHERE rental_rate = 0.99 ORDER BY length DESC LIMIT 1;
SELECT COUNT(DISTINCT replacement_cost)  FROM film WHERE length > 150;
