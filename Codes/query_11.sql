-- 11. Top 5 athletes who have won the most gold medals.

WITH top_5 AS 
(SELECT name, team, COUNT(1) AS gold_medals
		FROM events
		WHERE medal = 'Gold'
		GROUP BY name, team
		ORDER BY gold_medals DESC), 
		
	tp AS
	(SELECT *, DENSE_RANK() OVER(ORDER BY gold_medals DESC) as rnk
    FROM top_5)
	SELECT name, team, gold_medals
	FROM tp
    WHERE rnk <= 5;
