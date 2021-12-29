DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS fav;

CREATE TABLE users(id INTEGER PRIMARY KEY,
                username TEXT NOT NULL UNIQUE,
                hash TEXT NOT NULL);

CREATE TABLE fav(movieid INTEGER NOT NULL,
                userid INTEGER NOT NULL);