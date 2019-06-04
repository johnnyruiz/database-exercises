USE codeup_test_db;

#Albums by Pink Floyd
SELECT name AS 'Albums by Pink Floyd' from albums where artist = 'Pink Floyd';

#Release date of requested album
SELECT release_date AS 'Release year of Sgt. Pepper''s Lonely Hearts Club' from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

#Genre of Nevermind
SELECT genre AS 'Genre of Nevermind' from albums where name = 'Nevermind';

#Albums made in the 90s
SELECT name AS 'Albums made in the 1990''s' from albums where release_date BETWEEN 1990 AND 1999;

#Albums that sold less than 20 mil copies
SELECT name AS 'Albums that sold less than 20mil copies' from albums where sales < 20;

#Albums with genre of 'Rock'
SELECT name AS 'Albums with the genre of ''Rock''' from albums where genre = 'Rock';


