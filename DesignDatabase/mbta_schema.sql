CREATE TABLE "card" (
    "id" INTEGER, 
    "balance" NUMERIC  NOT NULL CHECK("balance" >= 0), 
    PRIMARY KEY("id")
); 

CREATE TABLE "stations"(
    "id" INTEGER, 
    "name" TEXT NOT NULL UNIQUE, 
); 
