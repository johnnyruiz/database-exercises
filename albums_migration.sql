USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    artist VARCHAR(255) NOT NULL ,
    name VARCHAR(255) NOT NULL ,
    release_date INT(4) NOT NULL ,
    sales DECIMAL(9,2) NOT NULL ,
    genre VARCHAR(255) NOT NULL
);

