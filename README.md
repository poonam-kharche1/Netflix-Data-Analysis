# Netflix-Data-Analysis
Netflix Shows Data Analysis
This project demonstrates practical SQL skills using the Netflix Movies and TV Shows dataset. The goal is to showcase how SQL can be used to explore content trends, analyze people (actors & directors), and derive business-style insights from a real-world dataset.

🗂 Dataset

The project uses the following Netflix CSV files:

netflix_titles.csv

netflix_titles_cast.csv

netflix_titles_directors.csv

netflix_titles_countries.csv

Each file is joined using the common key show_id.

📊 SQL Queries Included
1️⃣ Top 3 Longest Movies and TV Shows

File: 01_Top_3_Longest_Movies_and_TV_Shows.sql

Objective: Identify the longest-running content on Netflix by:

Minutes for Movies

Number of seasons for TV Shows

Key Concepts:

String parsing

Type-based filtering

Ordering and limiting results

2️⃣ Top 10 Countries with Highest Number of Shows

File: 02_Top 10 Countries_with_Highest_shows.sql

Objective: Determine which countries contribute the most titles to the Netflix catalog.

Key Concepts:

Joins

Aggregation (COUNT)

Ranking countries by volume

3️⃣ Netflix Year-over-Year (YoY) Catalog Change

File: 03_Netflix_YoY_Catalog_Change.sql

Objective: Analyze how Netflix’s catalog has grown or contracted year over year based on release year.

Key Concepts:

Time-based aggregation

Window functions

Trend analysis

4️⃣ Most Prolific Directors in the Catalog

File: 04_Most Prolific_Directors_in_Catalog.sql

Objective: Identify directors with the highest number of titles on Netflix.

Key Concepts:

Many-to-many joins

Aggregation and ranking

Director-level performance analysis

5️⃣ Actor Scale vs Collaboration Depth Across Countries

File: 05_Actor_Scale_vs_Collaboration_Depth_Across_Countries.sql

Objective: Compare actor productivity and collaboration diversity by country by analyzing:

Total number of movies

Number of distinct directors worked with

This query answers:

Do actors specialize with a few directors, or collaborate broadly across many?

Key Concepts:

Multi-table joins

COUNT(DISTINCT ...)

Analytical storytelling using SQL
