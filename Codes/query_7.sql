-- 7. Which Sports were just played only once in the olympics.

WITH sp_1 AS
	(SELECT DISTINCT games, sport
      FROM events),
     sp_2 AS
		(SELECT sport, COUNT(1) AS no_of_games
			FROM sp_1
          	GROUP BY sport)
			
      SELECT sp_2.*, sp_1.games
      	FROM sp_2
      	JOIN sp_1 on sp_1.sport = sp_2.sport
      	WHERE sp_2.no_of_games = 1
      	ORDER BY sp_1.sport;