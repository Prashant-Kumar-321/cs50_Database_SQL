CREATE TABLE Authors (
    id INTEGER, 
    name TEXT NOT NULL, 
    country TEXT, 
    birth INTEGER, 
    PRIMARY KEY(id)
);

CREATE TABLE Publishers(
    id INTEGER, 
    publisher TEXT, 
    PRIMARY KEY(id)
); 

CREATE TABLE Books (
    id INTEGER, 
    isbn TEXT UNIQUE NOT NULL, 
    title TEXT NOT NULL, 
    publisher_id INTEGER, 
    format TEXT NOT NULL,
    pages INTEGER NOT NULL DEFAULT 100, 
    published TEXT,
    year INTEGER, 
    
    -- Column Check contraints
    CHECK (format IN ('Paperback', 'Hard cover')),
    CHECK(pages > 0),
    CHECK(published LIKE '____-__-__'), 
    CHECK (year >= 1000),

    -- Table contraints 
    PRIMARY KEY(id), 
    FOREIGN KEY(publisher_id) REFERENCES Publishers (id)
); 

-- Joint Relation between Books and Authors
CREATE TABLE Authored (
    book_id INTEGER, 
    author_id INTEGER, 
    FOREIGN KEY(book_id) REFERENCES Books(id),
    FOREIGN KEY(author_id) REFERENCES Authors (id)
); 

CREATE TABLE Ratings(
    book_id INTEGER, 
    rating FLOAT 
    CHECK(rating >= 1 AND rating <= 5), 

    FOREIGN KEY(book_id) REFERENCES Books (id)
); 

CREATE TABLE Translators(
    id INTEGER, 
    name TEXT NOT NULL, 
    PRIMARY KEY(id)
);

-- Joint Relation between books and translators
CREATE TABLE Translated(
    book_id INTEGER,
    translator_id INTEGER,
    FOREIGN KEY(book_id) REFERENCES Books(id), 
    FOREIGN KEY(translator_id) REFERENCES Translators(id)
); 