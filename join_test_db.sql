CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');


#when adding to the table be sure to run the drop if exist then create table

DROP TABLE if exists users;

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('adrian', 'adrien@example.com', 3),
       ('arthur', 'arthur@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
       ('John', 'john@example.com', 2),
       ('Jake', 'jake@example.com', null),
       ('Jordan', 'jordan@example.com', 4);

select *
from users;

select *
from roles;

#inner join
SELECT users.name user_name, roles.name role_name
FROM users
JOIN roles on users.role_id = roles.id;


#left join
SELECT users.name user_name, roles.name role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;


#right join
SELECT users.name user_name, roles.name role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


#counts the number of users assigned to each role
SELECT roles.name role_name,
COUNT(*) number_of_users
FROM roles
JOIN users ON users.role_id = roles.id
GROUP BY role_name asc, roles.name;

