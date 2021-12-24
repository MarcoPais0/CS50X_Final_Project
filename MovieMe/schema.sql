DROP TABLE IF EXISTS users;

CREATE TABLE users(id INTEGER PRIMARY KEY,
                username TEXT NOT NULL UNIQUE,
                hash TEXT NOT NULL);
