-- SQL query to find the year-over-year change in the number of titles released on Netflix from 2012 to 2020
-- The query counts the number of titles released each year and calculates the difference from the previous year

SELECT
  release_year,
  COUNT(*) AS title_count,
  title_count
    - LAG(title_count) OVER (ORDER BY release_year) AS yoy_change
FROM netflix_titles.csv
WHERE release_year BETWEEN 2005 AND 2020
GROUP BY release_year
ORDER BY release_year DESC;