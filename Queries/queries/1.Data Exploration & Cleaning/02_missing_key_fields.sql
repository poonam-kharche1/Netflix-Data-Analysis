-- Query to select records from the netflix_titles.csv dataset where any of the key fields (show_id, type, title) are missing (NULL).
SELECT 
show_id,
type,
title
From netflix_titles.csv
WHERE show_id IS NULL
   OR type IS NULL
   OR title IS NULL;
