
-- PIVOT
In Postgresql, we can use crosstab function to create pivot table.
crosstab function is part of a PostgreSQL extension called tablefunc.
To call the crosstab function, you must first enable the tablefunc extension by executing the following SQL command:

CREATE EXTENSION TABLEFUNC;

-- 14. List down total gold, silver and broze medals won by each country.

    SELECT country,
		COALESCE(gold, 0) as Gold,
        COALESCE(silver, 0) as Silver,
        COALESCE(bronze, 0) as Bronze
    FROM CROSSTAB('SELECT r.region as country
    			, medal
    			, count(1) as total_medals
    			FROM events e
    			JOIN regions r ON r.noc = e.noc
    			WHERE medal != ''NA''
    			GROUP BY r.region, medal
    			ORDER BY r.region, medal',
            'values (''Bronze''), (''Gold''), (''Silver'')')
    AS FINAL_RESULT(country VARCHAR, bronze BIGINT, gold BIGINT, silver BIGINT)
    ORDER BY gold DESC, silver DESC, bronze DESC;
