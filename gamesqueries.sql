-- Video Games Analytics Project by Tayyab
-- A SQL project analysing video game data

-- Query 1: Top 5 highest rated games
SELECT title, rating, platform 
FROM games
ORDER BY rating DESC
LIMIT 5;

-- Query 2: Total games per platform
SELECT platform, COUNT(*) as total_games
FROM games
GROUP BY platform
ORDER BY total_games DESC;

-- Query 3: Total sales per developer
SELECT developer, SUM(sales_millions) as total_sales
FROM games
GROUP BY developer
ORDER BY total_sales DESC;

-- Query 4: Highest rated game per genre
SELECT genre, MAX(rating) as maximum_rating
FROM games
GROUP BY genre
ORDER BY maximum_rating DESC;

-- Query 5: Games from outside the USA
SELECT title, developer, country
FROM games
WHERE country != 'USA'
ORDER BY title DESC;