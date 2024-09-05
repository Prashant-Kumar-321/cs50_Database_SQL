CREATE TABLE "collections"(
    id INTEGER, 
    title TEXT NOT NULL, 
    accession_number TEXT NOT NULL UNIQUE, 
    acquired NUMERIC, 
    PRIMARY KEY(id)
); 

CREATE TABLE "artists"(
    id INTEGER, 
    name TEXT NOT NULL, 
    PRIMARY KEY(id) 
); 

CREATE TABLE "tem_created"(
    artist_id INTEGER, 
    collection_id INTEGER, 
    PRIMARY KEY(artist_id, collection_id), 
    FOREIGN KEY(artist_id) REFERENCES artists(id) ON DELETE CASCADE, 
    FOREIGN KEY(collection_id) REFERENCES collections(id) ON DELETE CASCADE
); 
