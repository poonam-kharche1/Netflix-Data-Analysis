--- Query to find the top 3 longest movies and top 3 longest TV shows on Netflix
-- Movies are measured in minutes, TV shows in number of seasons
-- subqueries are used to separate the logic for movies and TV shows

SELECT title, type, duration, duration_unit
FROM (
    SELECT
        title,
        type,
        TRY_CAST(duration_minutes AS INTEGER) AS duration,
        'minutes' AS duration_unit
    FROM netflix_titles.csv
    WHERE type = 'Movie'
      AND TRY_CAST(duration_minutes AS INTEGER) IS NOT NULL
    ORDER BY TRY_CAST(duration_minutes AS INTEGER) DESC
    LIMIT 3
)

UNION ALL

SELECT title, type, duration, duration_unit
FROM (
    SELECT
        title,
        type,
        TRY_CAST(duration_seasons AS INTEGER) AS duration,
        'seasons' AS duration_unit
    FROM netflix_titles.csv
    WHERE type = 'TV Show'
      AND TRY_CAST(duration_seasons AS INTEGER) IS NOT NULL
    ORDER BY TRY_CAST(duration_seasons AS INTEGER) DESC
    LIMIT 3
);