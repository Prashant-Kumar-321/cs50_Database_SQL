-- 1. Find out the books publised by Fitzcarraldo Editions 
SELECT "title" 
FROM "books" 
WHERE "publisher_id" = (
    -- Sub Query to get the id of the interested publisher 
    SELECT "id" 
    FROM "Publishers" 
    WHERE "publisher" = 'Fitzcarraldo Editions' 
);

-- Equivalent Join sql command for above query 
SELECT "books"."title", "filtered_Publishers"."publisher" -- I want title and publisher column from Joined table result set 
FROM (
    SELECT "id", "publisher"
    FROM "publishers" 
    WHERE "publisher" = 'Fitzcarraldo Editions'
) AS "filtered_Publishers" -- Alias Name 
LEFT JOIN "books" ON "books"."publisher_id" = "filtered_Publishers"."id"; 




-- 2. Find all the ratings for the book In Memory of Memory 
SELECT "rating" 
FROM "ratings" 
WHERE "book_id" = (
    SELECT "id" 
    FROM "books" 
    WHERE "title" = 'In Memory of Memory'
); 

-- Sum, Average, Count, Distinct of ratings 
-- a. SELECT COUNT("rating") AS "Total ratings Count" 
-- b. SELECT ROUND(AVG("rating"), 2) AS "Average of ratings"
-- c. SELECT COUNT(*) AS "Total number of Distinct Ratings" 
FROM (
    SELECT DISTINCT("rating") AS "Total number of distinct ratings"
    FROM "ratings" 
    WHERE "book_id" = (
        SELECT "id" 
        FROM "books" 
        WHERE "title" = 'In Memory of Memory'
    )
); 

-- Find the Author(s) who wote the books Flights. 
SELECT "name" 
FROM "Authors"
WHERE "id" IN (
    SELECT "author_id" 
    FROM "Authored" 
    WHERE "book_id" = (
        SELECT "id" 
        FROM "books" 
        WHERE "title" = 'Flights'
    )
);

-- Find the book(s) Written by Fernanda Melchor 
SELECT "title" 
FROM "books" 
WHERE "id" IN (
    SELECT "book_id"
    FROM "Authored" 
    WHERE "author_id" = (
        SELECT "id" 
        FROM "Authors" 
        WHERE "name" = 'Fernanda Melchor'
    )
); 