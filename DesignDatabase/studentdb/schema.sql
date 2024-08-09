CREATE TABLE Students (
    id INTEGER, 
    first_name TEXT NOT NULL, 
    last_name TEXT, 
    roll_no INTEGER NOT NULL UNIQUE CHECK(roll_no >= 1 AND  roll_no <= 120),  
    class TEXT NOT NULL, 
    department TEXT DEFAULT "Math" CHECK (department IN ("Hindi", "Computer Application", "Information Technology", "Zoology", "Bootny", "Electronics", "Math", "English", "BBA", "Law")), 
    PRIMARY KEY(id) 
); 