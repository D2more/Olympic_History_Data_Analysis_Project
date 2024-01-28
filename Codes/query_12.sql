
-- 12. Top 5 athletes who have won the most medals (gold/silver/bronze).
    WITH ath_1 AS
            (SELECT name, team, count(1) AS total_medals
            FROM events
            WHERE medal IN ('Gold', 'Silver', 'Bronze')
            GROUP BY name, team
            ORDER BY  total_medals DESC),
        ath_2 AS
            (SELECT *, DENSE_RANK()  OVER(ORDER BY total_medals DESC) AS rnk
            FROM ath_1)
    SELECT name, team, total_medals
    FROM ath_2
    WHERE rnk <= 5;
