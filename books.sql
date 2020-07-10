# CREATE TABLE books 
# 	(
# 		book_id INT NOT NULL AUTO_INCREMENT,
# 		title VARCHAR(100),
# 		author_fname VARCHAR(100),
# 		author_lname VARCHAR(100),
# 		released_year INT,
# 		stock_quantity INT,
# 		pages INT,
# 		PRIMARY KEY(book_id)
# 	);
 
# INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
# VALUES
# ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
# ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
# ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
# ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
# ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
# ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
# ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
# ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
# ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
# ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
# ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
# ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
# ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
# ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
# ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
# ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);


# SELECT SUBSTRING(title,1,10) AS 'short_title' FROM books;

# SELECT
#     CONCAT(
#         SUBSTRING(title,1,10),
#         '...')
#         AS 'title...'
#         FROM books;


# SELECT REPLACE(title,'e',3) FROM books;

# SELECT 
#     SUBSTRING(
#         REPLACE(title,'a',9),
#         1,10
#         ) AS 'wierd string'
#             FROM books;


# SELECT 
#    CONCAT(
#     SUBSTRING(
#         REPLACE(title,'a',9),
#         1,10
#         ),
#       " ..."
#    )
#    AS 'wierd string ...'
#             FROM books;

# SELECT REVERSE(title) AS 'reverse title'  FROM books;

# SELECT CHAR_LENGTH(title) AS 'Title Length' from books;

# SELECT UPPER(author_fname) , LOWER(author_lname) FROM books;

# SELECT 
#     CONCAT(
#         SUBSTRING(title,1,10),
#         '...') AS 'short title',
#     CONCAT_WS(',',
#         author_lname,author_fname) AS 'author',
#     CONCAT(
#         stock_quantity," in stock.") AS 'quantity'
#     FROM books;

# INSERT INTO books
#     (title, author_fname, author_lname, released_year, stock_quantity, pages)
#     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
#            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
#            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           

# SELECT DISTINCT author_fname FROM books;

# SELECT DISTINCT CONCAT_WS(' ',author_fname,author_lname) AS 'author' FROM books;

# SELECT DISTINCT author_fname , author_lname FROM books;

           
# SELECT title FROM books ORDER BY title;        
# SELECT title FROM books ORDER BY title DESC;           

# SELECT title,author_fname,author_lname FROM books ORDER BY 3,2; # 3 and 2 reffers to the selected columns in that order.
           
# SELECT  * FROM books ORDER BY released_year DESC LIMIT 0,18548761304;         


# SELECT author_fname FROM books WHERE author_fname LIKE '%da%';

# SELECT title AS 'Book Title' FROM books WHERE title LIKE '%the%' ORDER BY released_year LIMIT 4;

# SELECT title,stock_quantity FROM books WHERE stock_quantity LIKE '___';

# SELECT title FROM  books WHERE title LIKE '%\%%';
# SELECT title FROM  books WHERE title LIKE '%\_%';


# SELECT title FROM books WHERE title LIKE '%stories%';

# SELECT title,pages FROM books ORDER BY 2 DESC LIMIT 1;

# SELECT CONCAT_WS(" - ",title,released_year) AS 'summary' FROM books ORDER BY released_year DESC LIMIT 0,3;

# SELECT title,author_lname FROM books WHERE author_lname LIKE '% %';

# SELECT title,released_year,stock_quantity FROM books ORDER BY 3 LIMIT 0,3;

# SELECT title,author_lname FROM books ORDER BY author_lname,title;

# SELECT UPPER(CONCAT('MY FAVOURITE AUTHOR IS ',author_fname,' ',author_lname,'!')) AS 'yell' FROM books ORDER BY author_lname;