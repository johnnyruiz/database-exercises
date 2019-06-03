USE codeup_test_db;

#Albums by Pink Floyd
SELECT 'By Pink Floyd' AS 'Albums';
SELECT name from albums where artist = 'Pink Floyd';

#Release date of requested album
SELECT 'Of Sgt. Pepper''s Lonely Hearts Club' AS 'Release Year';
SELECT release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

#Genre of Nevermind
SELECT 'Of Nevermind' AS 'Genre';
SELECT genre from albums where name = 'Nevermind';

#Albums made in the 90s
SELECT 'made in 1990''s' AS 'Albums';
SELECT name from albums where release_date BETWEEN 1990 AND 2000;

#Albums that sold less than 20 mil copies
SELECT 'that sold less than 20mil copies' AS 'Albums';
SELECT name from albums where sales < 20;

#Albums with genre of 'Rock'
SELECT 'with genre of ''Rock''' AS 'Albums';
SELECT name from albums where genre = 'Rock';


