-- Find the rating count, sum of ratings, average of ratings 
SELECT 
    "book_id", COUNT("rating") AS "Rating Count", SUM("rating") AS "Rating Sum", ROUND(AVG("rating"), 2) AS "Average rating"
FROM 
    "ratings" 
GROUP BY 
    "book_id"; 


-- Find the well rated books over 4 AND Order higher rating first 
SELECT 
    "book_id", ROUND(AVG("rating"), 2) AS "Average rating" 
FROM 
    "ratings" 
GROUP BY 
    "book_id" 
HAVING 
    "Average rating" > 4.0 
ORDER BY 
    "Average rating" DESC; 
