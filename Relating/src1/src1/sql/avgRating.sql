/*
	Query: Find the Average rating of book = 'In Memory of Memory'
 */

SELECT ROUND(AVG("rating"), 2) AS "Average Rating"
FROM "ratings"
WHERE "book_id" = (
	SELECT "id" FROM "books"
	WHERE "title" = 'In Memory of Memory'
); 

-- Max Rating 

SELECT MAX("rating")  AS "Max Rating"
FROM "ratings"
WHERE "book_id" = (
	SELECT "id" FROM "books"
	WHERE "title" = 'In Memory of Memory'
); 

-- Min Rating 
SELECT MIN("rating") AS "Min Rating"
FROM "ratings"
WHERE "book_id" = (
	SELECT "id" FROM "books"
	WHERE "title" = 'In Memory of Memory'
); 