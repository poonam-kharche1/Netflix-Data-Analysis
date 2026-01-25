-- Query to find the most prolific directors in the Netflix catalog
-- This query counts the number of titles each director has in the catalog and ranks them accordingly.
-- It returns the top 20 directors with the highest number of titles.
-- CTE and dense ranking are used for clarity and efficiency

WITH director_counts AS (
  SELECT
    d.director,
    COUNT(*) AS title_count
  FROM netflix_titles.csv nt
  JOIN netflix_titles_directors.csv d
    ON nt.show_id = d.show_id
  GROUP BY d.director
)
SELECT
  director,
  title_count,
  DENSE_RANK() OVER (ORDER BY title_count DESC) AS director_rank
FROM director_counts
ORDER BY director_rank, director
LIMIT 20;