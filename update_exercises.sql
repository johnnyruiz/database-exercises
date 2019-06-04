USE codeup_test_db;

#shows the name of all albums from the albums table
SELECT * from albums;
UPDATE albums
SET sales = sales*10;

#shows albums released before 1980
SELECT * from albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

#shows albums by Michael Jackson
SELECT * from albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';