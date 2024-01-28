-- 8. Fetch the total no of sports played in each olympic games.

WITH tn_1 AS 
	(SELECT DISTINCT games, sport
		FROM events),
	tn_2 AS
		(SELECT games, COUNT(1) AS no_of_sport
			FROM tn_1
			GROUP BY games)
			
		SELECT *
		FROM tn_2
		ORDER BY no_of_sport DESC;		
	