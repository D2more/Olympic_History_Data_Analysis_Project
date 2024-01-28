-- 4. Which year saw the highest and lowest no of countries participating in olympics
WITH all_countries AS
	(SELECT games, r.region
	 FROM events e
	 JOIN regions r ON r.noc = e.noc
	 GROUP BY games, r.region),tot_countries
	 	AS
	(SELECT games, COUNT(1) AS total_countries
	FROM all_countries
	GROUP BY games)
	SELECT DISTINCT
	concat(FIRST_VALUE(games) OVER(ORDER BY total_countries), ' - ', 
		   FIRST_VALUE(total_countries) OVER(ORDER BY total_countries)) AS Lowest_Countries,
		   concat(FIRST_VALUE(games) OVER(ORDER BY total_countries DESC), ' - ', 
				  FIRST_VALUE(total_countries) OVER(ORDER BY total_countries DESC)) AS Highest_Countries
	FROM tot_countries
	ORDER BY 1;