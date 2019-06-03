USE codeup_test_db;

#shows the name of all albums from the albums table
SELECT name from albums;
UPDATE albums
SET sales = sales*10;

#shows albums released before 1980
SELECT name from albums WHERE release_date < 1980;
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

#shows albums by Michael Jackson
SELECT name from albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';