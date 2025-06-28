--  CREATE DATABASE shirts_db;

-- USE shirts_db;
--  
--  CREATE TABLE shirts(
--     shirt_id INT AUTO_INCREMENT PRIMARY KEY,
--     article VARCHAR(20),
--     color VARCHAR(15),
--     shirt_size VARCHAR(5),
--     last_worn INT
-- );

-- DESC shirts;

-- INSERT INTO shirts (article, color, shirt_size, last_worn)
--     VALUES
--     ('t-shirt', 'white', 'S', 10),
--     ('t-shirt', 'green', 'S', 200),
--     ('polo shirt', 'black', 'M', 10),
--     ('tank top', 'blue', 'S', 50),
--     ('t-shirt', 'pink', 'S', 0),
--     ('polo shirt', 'red', 'M', 5),
--     ('tank top', 'white', 'S', 200),
--     ('tank top', 'blue', 'M', 15);
--     
-- SELECT * FROM shirts;

-- INSERT INTO shirts (article, color, shirt_size, last_worn)  VALUES ('Polo shirt','purple','M',50);

-- SELECT article,color FROM shirts ;

-- SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M' ;

-- SELECT article,shirt_size FROM shirts WHERE article='polo shirt';

-- UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';

-- SELECT * FROM shirts;

-- UPDATE shirts SET last_worn=0 WHERE last_worn=15;

-- SELECT * FROM shirts;

-- SELECT color, shirt_size FROM shirts WHERE color='white';

-- UPDATE shirts SET color='off white', shirt_size='XL' WHERE color='white';

-- SELECT * FROM shirts;

-- DELETE FROM shirts WHERE last_worn=200;

-- SELECT * FROM shirts;

-- DELETE FROM shirts WHERE article='tank top';

-- SELECT * FROM shirts;

-- DELETE FROM shirts;

-- DESC shirts;

-- SELECT * FROM shirts;

-- DROP TABLE shirts;

-- DROP DATABASE shirts_db;
 


