USE codeup_test_db;



SELECT 'released after 1991' AS 'Albums';
DELETE from albums where release_date > 1991;

SELECT 'from the disco genre' AS 'Albums';
DELETE from albums where genre = 'disco';

SELECT 'by Whitney Houston' AS 'Albums';
DELETE from albums where artist = 'Whitney Houston';
