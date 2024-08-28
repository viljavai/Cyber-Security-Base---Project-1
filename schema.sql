CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    username TEXT UNIQUE, 
    password TEXT NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY, 
    user_id INTEGER REFERENCES users(id), 
    animals TEXT NOT NULL, 
    city TEXT NOT NULL, 
    timedate DATE, 
    comment TEXT, 
    visible BOOLEAN
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY, 
    post_id INTEGER REFERENCES posts(id), 
    user_id INTEGER REFERENCES users(id), 
    body TEXT NOT NULL, 
    sent TIMESTAMP
);

CREATE TABLE forumposts (
    id SERIAL PRIMARY KEY, 
    user_id INTEGER REFERENCES users(id), 
    headline TEXT, 
    content TEXT, 
    sent TIMESTAMP, 
    visible BOOLEAN
);

CREATE TABLE forumcomments (
    id SERIAL PRIMARY KEY, 
    user_id INTEGER REFERENCES users(id), 
    forumpost_id INTEGER REFERENCES forumposts(id), 
    content TEXT, 
    sent TIMESTAMP, 
    visible BOOLEAN
);

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY, 
    user_id INTEGER REFERENCES users(id), 
    description TEXT, 
    favourite TEXT
);
