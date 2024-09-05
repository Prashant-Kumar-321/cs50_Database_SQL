CREATE TABLE "students"(
    id INTEGER, 
    reg_no TEXT NOT NULL UNIQUE,
    name TEXT NOT NULL, 
    branch TEXT NOT NULL, 
    sem INTEGER, 
    CHECK (sem >= 1 AND sem <= 8),
    PRIMARY KEY(id) 
); 