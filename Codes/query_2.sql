-- 2. List down all Olympics games held so far. (Data issue at 1956-"Summer"-"Stockholm")

    SELECT DISTINCT e.year, e.season, e.city
    from events oh
    ORDER BY year;
