
-- 13. Top 5 most successful countries in olympics. Success is defined by no of medals won.
    WITH t1 AS
            (SELECT r.region, COUNT(1) AS total_medals
            FROM events e
            JOIN regions r ON r.noc = e.noc
            WHERE medal != 'NA'
            GROUP BY r.region
            ORDER BY total_medals DESC),
        t2 AS
            (SELECT *, DENSE_RANK() OVER(ORDER BY total_medals DESC) AS rnk
            FROM t1)
    SELECT *
    FROM t2
    WHERE rnk <= 5;
