-- 3. Mention the total no of nations who participated in each olympics game?
WITH all_countries AS
   (SELECT games, r.region
FROM events e
JOIN regions r ON r.noc = e.noc
GROUP BY games, r.region)
SELECT games, COUNT(1) AS total_countries
FROM all_countries
group BY games
ORDER BY games;
