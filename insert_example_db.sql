USE ad_lister;

INSERT INTO users (email, pass,)
values
('example@.com', '******'),
('example2@.com', '******'),
('example3@.com', '******'),
('example4@.com', '******'),
('example5@.com', '******');

INSERT INTO ads (title, content, ID,)
values
('example', 'exampleDesc', 1),
('example2', 'exampleDesc2', 1),
('example3', 'exampleDesc3', 2),
('example4', 'exampleDesc4', 3),
('example5', 'exampleDesc5', 1),
('example6', 'exampleDesc6', 3),
('example7', 'exampleDesc7', 4),
('example', 'exampleDesc8', 4);

INSERT INTO categories (cat_name)
values
('music'),
('movies'),
('romance'),
('humor'),
('sadness');

INSERT INTO ads_cat (ads_id, cat_id)
values
(1,1),
(1,4),
(2,3),
(3,3),
(3,5),
(3,2),
(4,4),
(5,1),
(6,1),
(6,4);
