-- INNER JOIN 
-- Retains only those data that have matching values (rows)
SELECT * -- Columns to be selected from [Joined Table]
FROM "sea_lions" -- Table1 (left Table)
INNER JOIN "migrations" -- Table2 (Right Table)
ON sea_lions.id = migrations.id;  -- Specify columns to be matched 

-- Natural Join 
-- Matches Values of Columns of two tables with same name and types 
-- Works same as Inner Join 

SELECT * 
FROM "sea_lions" 
NATURAL JOIN "migrations"; 

-- Left Join 
SELECT * 
FROM sea_lions 
LEFT JOIN migrations 
ON sea_lions.id = migrations.id ; 

-- Right Join (swap the tables)
SELECT * 
FROM  migrations
LEFT JOIN  sea_lions 
ON sea_lions.id  = migrations.id ; 

-- Q> Full Join Using left Join and Union 
-- sea_lions | migrations 
SELECT
    * 
    -- sea_lions.* , migrattions.*
    -- sea_lions.id, sea_lions.name, sea_lions.species, 
    -- migrations.id, migrations.distance, migrations.days 
FROM 
    sea_lions 
    LEFT JOIN migrations 
    ON sea_lions.id = migrations.id -- since name of column same so can be used -> [USING(id)]
UNION
SELECT 
    * 
FROM
    migrations 
    LEFT JOIN sea_lions ON sea_lions.id = migrations.id; 


-- Giving Alias Name to the Table
SELECT * 
FROM    
    sea_lions s 
    LEFT JOIN migrations m ON s.id = m.id; 
-- s and m are Alias name to sea_lions and migrations table 

-- If value matching column name is same 
-- We can use USING KEYWORD 
-- Matching column is not repeated 
SELECT * 
FROM    
    sea_lions s 
    LEFT JOIN migrations m USING(id); 

-- Find sea_lions Which we don't have migration informations about 
SELECT 
    s.id, s.name, s.specices 
FROM 
    sea_lions s 
    LEFT JOIN migrations m USING(id) 
WHERE 
    m.id IS NULL; 

-- Find migrations informations which we don't have sea_lions's information 
-- and order them by days in descending order 
SELECT 
    m.* -- m.id, m.distance, m.days i.e every columns of m table in the joined table 
FROM 
    sea_lions s 
    LEFT JOIN migrations m ON s.id = m.id 
WHERE 
    s.id IS NULL
ORDER BY m.days DESC; 





