DROP TABLE votes;
DROP TABLE pubs;

CREATE TABLE pubs (
    id SERIAL4 PRIMARY KEY,
    name VARCHAR(255),
    postcode VARCHAR(255),
    registered Boolean
);

CREATE TABLE votes (
    id SERIAL4 PRIMARY KEY,
    vote_id INT2 REFERENCES pubs(id) ON DELETE CASCADE
);