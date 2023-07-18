USE cinema_booking_system;

SELECT name, length_min FROM films
WHERE length_min >
(SELECT AVG(length_min) FROM films);

SELECT AVG(length_min) FROM films;

SELECT MAX(id), MIN(id) FROM 
(SELECT film_id, count(id) AS id FROM screenings
GROUP BY film_id ) a;

SELECT name,
(SELECT COUNT(id) FROM screenings
WHERE film_id = f.id)
FROM films f;