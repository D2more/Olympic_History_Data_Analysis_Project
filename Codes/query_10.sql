--10. Find the Ratio of male and female athletes participated in all olympic games.
    WITH rti AS
        	(SELECT sex, COUNT(1) as cnt
        	FROM events
        	GROUP BY sex),
			
        rtn_2 AS
        	(SELECT *, ROW_NUMBER() OVER(ORDER BY cnt) AS rn
        	 FROM rti),
			 
        min_cnt AS
        	(SELECT cnt FROM rtn_2	WHERE rn = 1),
        max_cnt AS
        	(SELECT cnt FROM rtn_2	WHERE rn = 2)
			
    SELECT CONCAT('1 : ', ROUND(max_cnt.cnt::decimal/min_cnt.cnt, 2)) as ratio
    FROM min_cnt, max_cnt;
