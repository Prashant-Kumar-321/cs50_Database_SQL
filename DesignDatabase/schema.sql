-- Removes riders, stations and visits table completely from my database 
DROP TABLE "riders"; 
DROP TABLE "stations"; 
DROP TABLE "visits"; 

CREATE TABLE "riders" (
    "id" INTEGER, 
    "name" TEXT NOT NULL, 
    PRIMARY KEY ("id")
); 

CREATE TABLE "stations" (
    "id" INTEGER, 
    "name" TEXT  NOT NULL UNIQUE, -- COLUMN CONSTRAINTS
    "line" TEXT NOT NULL, 
    PRIMARY KEY ("id") -- TABLE CONSTRAINTS
);

-- Joint Table 
CREATE TABLE "visits" (
    "id" INTEGER, 
    "rider_id" INTEGER, 
    "station_id" INTEGER, 
    -- PRIMARY KEY ("rider_id", "station_id"), means A rider can not visit a station more than once
    PRIMARY KEY ("id"), 
    FOREIGN KEY ("rider_id") REFERENCES "riders"("id") , 
    FOREIGN KEY ("station_id") REFERENCES "stations"("id")

    -- FOREIGN KEY(COL1, COL2) REFERENCES _table (col1, col2) 
); 