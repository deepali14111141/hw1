-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS actor_memberships;

-- Create new tables, according to your domain model
-- TODO!
CREATE TABLE directors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year_release INTEGER,
    rating TEXT,
    director_id INTEGER
);
CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);
CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    actor_id INTEGER,
    screen_time INTEGER,
    movie_id INTEGER
);
CREATE TABLE actor_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    actor_id INTEGER
);
DROP TABLE actor_memberships;
CREATE TABLE actor_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    actor_id INTEGER
);
-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!
INSERT INTO directors (
    first_name,
    last_name
)
VALUES (
    "Christopher",
    "Nolan"
);
SELECT * FROM directors;
INSERT INTO movies (
    title,
    year_release,
    rating,
    director_id
)
VALUES (
    "Batman Begins",
    2005,
    "PG-13",
    1
);
INSERT INTO movies (
    title,
    year_release,
    rating,
    director_id
)
VALUES (
    "The Dark Knight",
    2008,
    "PG-13",
    1
);
INSERT INTO movies (
    title,
    year_release,
    rating,
    director_id
)
VALUES (
    "The Dark Knight Rises",
    2012,
    "PG-13",
    1
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Christian",
    "Bale"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Michael",
    "Cain"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Liam",
    "Neeson"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Katie",
    "Holmes"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Gary",
    "Oldman"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Heath",
    "Ledger"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Aaron",
    "Eckhart"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Maggie",
    "Gyllenhaal"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Tom",
    "Hardy"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Joseph",
    "Gordon-Levitt"
);
INSERT INTO actors (
    first_name,
    last_name
)
VALUES (
    "Anne",
    "Hathway"
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Bruce",
    "Wayne",
    1,
    100,
    1
);
INSERT INTO roles (
    first_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Alfred",
    2,
    90,
    1
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Ra's",
    "Al Ghul",
    3,
    85,
    1
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Rachel",
    "Dawes",
    4,
    80,
    1
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Commissioner",
    "Gordon",
    5,
    75,
    1
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Bruce",
    "Wayne",
    1,
    100,
    2
);
INSERT INTO roles (
    first_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Joker",
    6,
    99,
    2
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Harvey",
    "Dent",
    7,
    98,
    2
);
INSERT INTO roles (
    first_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Alfred",
    2,
    97,
    2
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Rachel",
    "Dawes",
    8,
    96,
    2
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Bruce",
    "Wayne",
    1,
    100,
    3
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Commissioner",
    "Gordon",
    5,
    90,
    3
);
INSERT INTO roles (
    first_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Bane",
    9,
    80,
    3
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "John",
    "Blake",
    10,
    79,
    3
);
INSERT INTO roles (
    first_name,
    last_name,
    actor_id,
    screen_time,
    movie_id
)
VALUES (
    "Selina",
    "Kyle",
    11,
    78,
    3
);




-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!
SELECT movies.title, movies.year_release, movies.rating, directors.first_name, directors.last_name
FROM directors
INNER JOIN movies ON directors.id = movies.director_id;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!
SELECT movies.title, actors.first_name, actors.last_name, roles.first_name, roles.last_name, roles.movie_id
FROM movies
INNER JOIN roles ON movies.id = roles.movie_id
INNER JOIN actor_memberships ON movies.id = actor_memberships.actor_id
GROUP BY roles.movie_id
ORDER BY roles.screen_time DESC;
