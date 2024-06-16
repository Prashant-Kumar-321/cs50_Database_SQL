-- Query: Find the ratings of the book In Memory of Memory

SELECT "rating" -- column needed 
FROM "ratings" -- table
WHERE "book_id" = ( -- Condition
	SELECT "id" 
	FROM "books"
	WHERE "title" = 'In Memory of Memory'
); 