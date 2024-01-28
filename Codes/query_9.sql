-- 9. Fetch oldest athletes to win a gold medal
WITH oldest AS
	(SELECT name, sex, CAST(CASE WHEN age = 'NA' THEN '0' ELSE age END AS int) AS age, team, 
	 	games, city, sport, event, medal
            FROM events), ranking AS
            (SELECT *, RANK() OVER(ORDER BY age DESC) AS rnk
            FROM oldest
            WHERE medal='Gold')
    SELECT *
    FROM ranking
    WHERE rnk = 1;
