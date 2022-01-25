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

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output

-- The SQL statement for the cast output
-- TODO!



--------------- Visual architecture --------------- 
.mode column
.headers off
.width 20 20 20

--------------- Drop commands --------------- 
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS casting_decisions;

--------------- Domain models --------------- 

CREATE TABLE directors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    director_name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_title TEXT,
    year_released TEXT,
    MPAA_rating TEXT,
    directors_id INTEGER  
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    actor_name TEXT
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character_name TEXT
);

CREATE TABLE casting_decisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movies_id INTEGER,
    actors_id INTEGER,
    characters_id INTEGER 
);


--------------- Data input for all tables below --------------- 

-----------------
--DIRECTORS data
-----------------
INSERT INTO directors (director_name)
VALUES ('Christopher Nolan');

-----------------
-- MOVIES data (Batman Begins)
-----------------
INSERT INTO movies (movie_title,year_released,MPAA_rating,directors_id)
VALUES ('Batman Begins','2005','PG-13','1');
-----------------
-- MOVIES data (The Dark Knight)
-----------------
INSERT INTO movies (movie_title,year_released,MPAA_rating,directors_id)
VALUES ('The Dark Knight','2008','PG-13','1');
-----------------
-- MOVIES data (The Dark Knight Rises)
-----------------
INSERT INTO movies (movie_title,year_released,MPAA_rating,directors_id)
VALUES ('The Dark Knight Rises','2012','PG-13','1');

-----------------
-- ACTORS data
-----------------
INSERT INTO actors (actor_name)
VALUES ('Christian Bale');

INSERT INTO actors (actor_name)
VALUES ('Michael Caine');

INSERT INTO actors (actor_name)
VALUES ('Liam Neeson');

INSERT INTO actors (actor_name)
VALUES ('Katie Holmes');

INSERT INTO actors (actor_name)
VALUES ('Gary Oldman');

INSERT INTO actors (actor_name)
VALUES ('Heath Ledger');

INSERT INTO actors (actor_name)
VALUES ('Aaron Eckhart');

INSERT INTO actors (actor_name)
VALUES ('Maggie Gyllenhaal');

INSERT INTO actors (actor_name)
VALUES ('Tom Hardy');

INSERT INTO actors (actor_name)
VALUES ('Joseph Gordon-Levitt');

INSERT INTO actors (actor_name)
VALUES ('Anne Hathaway');

-----------------
-- CHARACTERS data
-----------------

INSERT INTO characters (character_name)
VALUES ('Bruce Wayne');

INSERT INTO characters (character_name)
VALUES ('Alfred');

INSERT INTO characters (character_name)
VALUES ('Ra`s Al Ghul');

INSERT INTO characters (character_name)
VALUES ('Rachel Dawes');

INSERT INTO characters (character_name)
VALUES ('Commissioner Gordon');

INSERT INTO characters (character_name)
VALUES ('Joker');

INSERT INTO characters (character_name)
VALUES ('Harvey Dent');

INSERT INTO characters (character_name)
VALUES ('Bane');

INSERT INTO characters (character_name)
VALUES ('John Blake');

INSERT INTO characters (character_name)
VALUES ('Selina Kyle');

-----------------
-- CASTING DECISIONS data
-----------------

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('1','1','1');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('1','2','2');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('1','3','3');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('1','4','4');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('1','5','5');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('2','1','1');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('2','6','6');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('2','7','7');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('2','2','2');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('2','8','4');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('3','1','1');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('3','5','5');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('3','9','8');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('3','10','9');

INSERT INTO casting_decisions (movies_id,actors_id,characters_id)
VALUES ('3','11','10');

--------------- Output commands --------------- 
.print ""
.print "Movies"
.print "======"
.print ""

SELECT movies.movie_title,movies.year_released,movies.MPAA_rating,directors.director_name
FROM movies INNER JOIN directors
ON directors.id = movies.directors_id;


.print ""
.print "Top Cast"
.print "========"
.print ""

SELECT movies.movie_title,actors.actor_name,characters.character_name
FROM casting_decisions
INNER JOIN movies ON movies.id = casting_decisions.movies_id
INNER JOIN actors ON actors.id = casting_decisions.actors_id
INNER JOIN characters ON characters.id = casting_decisions.characters_id;
