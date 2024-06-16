-- Query: Find author(s) of book Flight

SELECT "name" -- find details of the authors
FROM "authors" 
WHERE "id" = (
	SELECT "author_id" -- find id of autors 
	FROM "authored"
	WHERE "book_id" = (
		SELECT "id"  -- find id of the books 
		FROM "books"
		WHERE "title" = 'Flights'
	)
); 