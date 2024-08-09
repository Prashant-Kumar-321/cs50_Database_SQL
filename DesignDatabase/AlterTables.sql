-- Change the of the table 
ALTER TABLE "oldTableName" RENAME TO "newTableName"; 

-- Add a new column to a table 
ALTER TABLE "tableName" ADD COLUMN "columnName" TYPE AFFINITY COL_CONSTRAINTS; 

-- Rename a column name 
ALTER TABLE "tableName" RENAME COLUMN "OldColName" TO "newColName"; 

-- Delete a column 
ALTER TABLE "tableName" DROP COLUMN "colName"; 