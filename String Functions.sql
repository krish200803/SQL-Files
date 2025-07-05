-- CREATE DATABASE book_shop;
-- USE book_shop;

--  CREATE TABLE books
--      (
-- 		book_id INT NOT NULL AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
--      );
-- DESC books;

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES
--     ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
--     ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
--     ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
--     ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
--     ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
--     ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
--     ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
--     ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
--     ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
--     ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
--     ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
--     ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
--     ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
--     ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
--     ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
--     ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
-- SELECT * FROM books;

-- --------------------------------------------   CONCAT(str,str,str) Commands -----------------------------------------------------

-- SELECT CONCAT( author_fname, ' ', author_lname) FROM books;

-- SELECT CONCAT( author_fname, ' ', author_lname) AS author_name FROM books;

-- --------------------------------------------   CONCAT_WS(seperator,str,str) Commands --------------------------------------------

-- SELECT CONCAT_WS( '-', title, author_fname, author_lname) FROM books;

-- SELECT CONCAT_WS( '-', title, author_fname, author_lname) AS author_name FROM books;

-- ---------------------------------------------- SUBSTRING(str,pos) or SUBSTR(str,pos) ------------------------------------------------

-- SELECT SUBSTRING('HELLO WORLD', 1, 5);   // HELLO

-- SELECT SUBSTRING('HELLO WORLD', 2, 5);     // ELLO

-- SELECT SUBSTR('HELLO WORLD', 7);         // WORLD

-- SELECT SUBSTR('HELLO WORLD', -3);         // RLD

-- SELECT  SUBSTR('HELLO WORLD', -1)           // D

-- SELECT SUBSTR( author_fname, 1, 1) , author_fname FROM books;
-- J  |	Jhumpa
-- N  |	Neil
-- N  |	Neil
-- J  |	Jhumpa
-- D  |	Dave

-- SELECT SUBSTR( author_fname, 1, 1) AS Initials, author_fname FROM books;
-- Initials |  author_fname
-- J	    |   Jhumpa
-- N	    |   Neil
-- N	    |   Neil
-- J	    |   Jhumpa
-- D	    |   Dave

-- SELECT SUBSTR( title, 1, 15) , title FROM books;
-- SUBSTR( title, 1, 15) |   title
-- The Namesake	         |   The Namesake
-- Norse Mythology	     |   Norse Mythology
-- American Gods	     |   American Gods
-- Interpreter of 	     |   Interpreter of Maladies
-- A Hologram for 	     |   A Hologram for the King: A Novel
-- The Amazing Adv	     |   The Amazing Adventures of Kavalier & Clay
-- A Heartbreaking	     |   A Heartbreaking Work of Staggering Genius

-- ---------------------------------------------- Combination of SUBSTR(str,pos) & CONCAT(str,str) ------------------------------------------------

-- SELECT CONCAT(SUBSTR(title, 1, 15), '....') FROM books;
-- SELECT CONCAT(SUBSTR(title, 1, 15), '....') AS short_title FROM books;
-- short_title         |
-- The Namesake....    | 
-- Norse Mythology.... |
-- American Gods....   |
-- Interpreter of .... |

-- SELECT CONCAT(SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.') AS Initials FROM books;
-- Initials 
-- J.L.
-- N.G.
-- N.G.
-- J.L.
-- D.E.

-- ---------------------------------------------- REPLACE(str,from_str, to_str) ------------------------------------------------

-- SELECT REPLACE('HELLO WORLD', 'HELLO', '$#$#@');    // $#$#@ WORLD

-- SELECT REPLACE( 'BREED AND BUTTER', ' ', '-');      // BREED-AND-BUTTER

-- SELECT REPLACE(title, ' ', '-') FROM books;

-- ---------------------------------------------- REVERSE(str) ----------------------------------------------------------

-- SELECT REVERSE('HELLO');      // OLLEH

-- SELECT REVERSE('UMESH BHADANE');   // ENADAHB HSEMU

-- SELECT REVERSE( author_fname) FROM books;
-- apmuhJ
-- lieN
-- lieN
-- apmuhJ

-- SELECT CONCAT(author_fname , REVERSE(author_fname)) FROM books;
-- JhumpaapmuhJ
-- NeillieN
-- DaveevaD

-- ---------------------------------------------- CHAR_LENGTH(str) ----------------------------------------------------------

-- SELECT CHAR_LENGTH("HELLO WORLD");     // 11

-- SELECT CHAR_LENGTH(title) AS length, title FROM books;
-- length |  title
-- 12	   |  The Namesake
-- 15	   |  Norse Mythology
-- 13	   |  American Gods
-- 23	   |  Interpreter of Maladies

-- ---------------------------------------------- Practice Question ----------------------------------------------------------

-- SELECT UCASE(REVERSE('Why does my cat look at me with such hatred?'));   // ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW

-- SELECT REPLACE( CONCAT( 'I',' ','Love', '_','cats'), ' ', '_');          // I_Love_cats

-- SELECT REPLACE( title, ' ', '->') AS title FROM books;
-- title
-- The->Namesake
-- Norse->Mythology
-- American->Gods

-- SELECT author_lname AS 'forward' , REVERSE(author_lname) AS 'backward' FROM books;
-- forward | backward
-- Lahiri	| irihaL
-- Gaiman	| namiaG
-- Gaiman	| namiaG

-- SELECT UCASE(CONCAT(author_fname, ' ', author_lname)) AS 'full name caps' FROM books;
-- full name caps
-- JHUMPA LAHIRI
-- NEIL GAIMAN
-- NEIL GAIMAN

-- SELECT CONCAT( title,' ','was Released in',' ', released_year) AS blurb FROM books;
-- blurb
-- The Namesake was Released in 2003
-- Norse Mythology was Released in 2016
-- American Gods was Released in 2001

-- SELECT title, CHAR_LENGTH(title) AS 'Character_Length' FROM books;
-- title            | Character_Length
-- The Namesake	    |      12
-- Norse Mythology	|      15
-- American Gods	|      13

SELECT 
	CONCAT(LEFT(title, 10),'...') AS 'short title',         -- // LEFT String Function used
    CONCAT(SUBSTR(title,1,10),'...') AS 'short title',      -- // SUBSTRING Function used
    CONCAT(author_lname,',',author_fname) AS 'author', 
	CONCAT(stock_quantity,' in Stock') AS quantity 
FROM books
-- short title    |   author        |    quantity
-- The Namesa...  | Lahiri,Jhumpa	|   32 in Stock
-- Norse Myth...  | Gaiman,Neil	    |   43 in Stock
-- American G...  | Gaiman,Neil	    |   12 in Stock





