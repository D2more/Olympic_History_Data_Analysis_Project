-- 1. How many olympics games have been held?

    SELECT COUNT(DISTINCT games) AS total_olympic_games
    FROM olympics_history;
