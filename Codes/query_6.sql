--6. Identify the sport which was played in all summer olympics.

      WITH mp_1 AS
          	(SELECT COUNT(DISTINCT games) as total_games
          		FROM events 
			 	WHERE season = 'Summer'),
          mp_2 AS
          	(SELECT DISTINCT games, sport
          	FROM events
			WHERE season = 'Summer'),
          mp_3 AS
          	(SELECT sport, COUNT(1) AS no_of_games
          	FROM mp_2
          	GROUP BY sport)
			
      SELECT *
      FROM mp_3
      JOIN mp_1 on mp_1.total_games = mp_3.no_of_games;

	 	