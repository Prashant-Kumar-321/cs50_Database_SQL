-- -- INTERSECT  
SELECT "name" FROM "translators" 
INTERSECT 
SELECT "name" FROM "authors"; 

-- -- UNION  
SELECT "name" FROM "translators" 
UNION 
SELECT "name" FROM "authors"; 

-- -- EXCEPT 
SELECT "name" FROM "authors" 
EXCEPT 
SELECT "name" FROM "translators"; 

-- Find the list of names of peoples who are either only translators or authors 
SELECT * 
FROM (
    SELECT * 
    FROM (
        SELECT "name" FROM "translators" 
        UNION 
        SELECT "name" FROM "authors" 
    )
    EXCEPT 
    SELECT * 
    FROM (
        SELECT "name" FROM "translators" 
        INTERSECT 
        SELECT "name" FROM "authors" 
    ) 
)
WHERE "name" LIKE 'N%'; 

-- Query: Find the list of books translated by both Sophies Huges and Margaret Jull Costa 
SELECT 
    "title" 
FROM 
    "books"
WHERE 
    "id" IN (
        -- List of all books translated by Sophie Huges 
        SELECT "book_id"
        FROM "translated" 
        WHERE "translator_id" = (
            SELECT "id" 
            FROM "translators" 
            WHERE "name" = 'Sophie Hughes'
        )

        INTERSECT
        -- List of all translated books by Margaret Jull Costa  
        SELECT "book_id"
        FROM "translated" 
        WHERE "translator_id" = (
            SELECT "id" 
            FROM "translators" 
            WHERE "name" = 'Margaret Jull Costa'
        )
    ); 
