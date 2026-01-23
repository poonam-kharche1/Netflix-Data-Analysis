-- Query to count the number of movies vs TV shows in the Netflix Titles dataset
SELECT 
type,
Count(*) as title_count
From netflix_titles.csv
Group by type
Order by title_count DESC;