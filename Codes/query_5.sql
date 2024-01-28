-- 5. Which nation has participated in all of the olympic games
WITH tot_games AS
	(SELECT COUNT(DISTINCT games) AS total_games
		FROM events e), countries AS
 		(SELECT games, r.region AS country
		FROM events e
		JOIN regions r ON r.noc= e.noc
		GROUP BY games, r.region), countries_participated AS
			(SELECT country, COUNT(1) AS total_participated_games
			FROM countries
			GROUP BY country)
	SELECT cp.*
	FROM countries_participated cp
	JOIN tot_games tg ON tg.total_games = cp.total_participated_games
	ORDER BY 1;