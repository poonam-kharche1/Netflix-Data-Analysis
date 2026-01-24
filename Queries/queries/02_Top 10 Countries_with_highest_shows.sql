-- SQL query to find the top 10 countries with the highest number of shows on Netflix   
-- The query joins the netflix_titles and countries datasets, counts the number of shows per country,
-- and orders the results to get the top 10 countries with the most shows.  
-- It also provides a breakdown of the number of movies and TV shows for each country.
SELECT
c.country,
  COUNT(CASE WHEN nt.type = 'Movie' THEN 1 END) AS movies,
  COUNT(CASE WHEN nt.type = 'TV Show' THEN 1 END) AS tv_shows,
COUNT(nt.show_id) AS show_count
FROM netflix_titles.csv nt
JOIN netflix_titles_countries.csv c ON nt.show_id = c.show_id
GROUP BY c.country
ORDER BY show_count DESC
LIMIT 10;



