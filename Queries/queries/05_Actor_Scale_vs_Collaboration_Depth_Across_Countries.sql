-- Query to find shows whether the actor is concentrated with 1–2 directors or broadly worked with many directors
-- Aggregarting by cast member and country, counting number of movies and distinct directors
-- Calculating average number of movies per director for each cast member in each country

SELECT
  ca.cast AS cast_member,
  co.country,
  COUNT(*) AS number_of_movies,
  COUNT(DISTINCT d.director) AS distinct_directors,
  ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT d.director), 2) AS movies_per_director
FROM netflix_titles.csv nt
JOIN netflix_titles_cast.csv ca
  ON nt.show_id = ca.show_id
JOIN netflix_titles_countries.csv co
  ON nt.show_id = co.show_id
JOIN netflix_titles_directors.csv d
  ON nt.show_id = d.show_id
WHERE nt.type = 'Movie'
GROUP BY ca.cast, co.country
HAVING COUNT(*) >= 20
ORDER BY movies_per_director DESC, number_of_movies DESC, distinct_directors DESC, cast_member, country;