USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
                       id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(255) NOT NULL ,
                       name VARCHAR(255) NOT NULL ,
                       release_date DATE NOT NULL ,
                       sales DECIMAL(9,2) NOT NULL ,
                       genre VARCHAR(255) NOT NULL ,
                       PRIMARY KEY (id)
);