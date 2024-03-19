-- write your queries here

SELECT * FROM owners o
FULL JOIN vehicles v
ON o.id = v.owner_id;

SELECT first_name, last_name, COUNT(o.id) FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.id
ORDER BY first_name;

SELECT first_name, last_name, ROUND(AVG(price)) AS avg_price, COUNT(*) FROM owners o
JOIN vehicles v
ON v.owner_id = o.id
GROUP BY o.id
HAVING COUNT(*) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;