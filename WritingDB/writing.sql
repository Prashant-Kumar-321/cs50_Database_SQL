-- import data from csv file in table 
-- Case 1: table schema is already defined 
-- Sqlite3 statement 
".import --csv --skip 1 file.csv table "

-- Case2: 
-- csv file has no pk for each row 
-- want sqlite3 to generate pk for each record automatically 
-- import data from csv in temporary table 
".import --csv file.csv temporary_table "
-- Copy data from temporary_table to original table where we wanted to store 
-- Syntax of copying data from one table to another table
INSERT INTO table(column0,....)
SELECT column0,.... FROM temporary; 

-- INSERT ONE RECORD 
INSERT INTO table(column0,...)
VALUES
(value0,...); 

-- INSERT MULTIPLE RECORDS 
INSERT INTO table(column0,...)
VALUES
(valu0,...),
(value1,...), 
....; 
