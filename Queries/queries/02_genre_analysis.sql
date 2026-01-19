SELECT t.title, d.director
FROM read_csv_auto('netflix_titles-Table 1.csv') t
JOIN read_csv_auto('netflix_titles_directors-Table 1.csv') d
  ON t.show_id = d.show_id
LIMIT 10;
Add basic SQL analysis queries;

