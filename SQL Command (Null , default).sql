-- INSERT INTO Car(Brand, Name, Type, Prize) Values ( null,null, 'Sports', 2200000);

-- Create Table Bus(
-- 	Brand varchar(20) not null Default 'TATA',
--     Name varchar(20) not null Default 'Scania',
--     Type varchar(20) not null Default 'MINIBUS',
--     Price Int not null Default 5000000
-- );

-- Insert into Bus(Brand, Name, Price) values (null , null, 1000000);  // Column, Name Brand Cannot be NUll

-- Insert into Bus(Brand, Name, Price) values ('Ashok' , 'Dabbu', 2500000);   
    
-- Insert into Bus( Name, Price) values ( 'Dabbu', 2500000);      

-- Insert into Bus( Price) values ( 10); 

-- Insert into Bus(Brand,Type, Name, Price) values ('JCB' ,'Long Bus', 'kadu', 2999999); 

-- Insert into Bus(Brand,type, Name, Price) values ('Ashok' , null, 'Dabbu', 2500000);   // Column type cannot be null

-- Insert into Bus() values (); // All Default Values will be Printed

-- --------------------------------------------------------- Primary key ------------------------------------------------

-- Create table Auto(
-- 	auto_id INT not null primary key,
--     Brand VARCHAR(50) not null Default 'TATA',
--     Name VARCHAR(20) NOT NULL ,
--     wheeller Int NOT NULL DEFAULT 3
--     );

-- INSERT INTO Auto(auto_id, Brand, Name, wheeller) Values (1, "TATA", "tuktuk", 3);

-- INSERT INTO Auto(auto_id, Brand, Name, wheeller) Values (1, "TATA", "kiku", 4);   // Duplicate entry of primary Key

-- INSERT INTO Auto(auto_id, Brand, Name, wheeller) Values (2, "TATA", "tuktuk", 3);

-- INSERT INTO Auto(auto_id, Brand, Name, wheeller) Values (3, "BATA", "kiku", 4);

-- INSERT INTO Auto(auto_id, Brand, Name, wheeller) Values (4, "Kia", "Sel", 2);

-- INSERT INTO Auto(auto_id, Name) Values (5autoauto, "kiku");

-- --------------------------------------------------------- auto_increment of Primary key ------------------------------------------------

--  create table Cat2(
-- 	cat_id INT auto_increment PRIMARY KEY,   // auto_increment is to set the primary key as it will automatically increment rather manually entering
-- 	name VARCHAR(20),
-- 	age INT,
-- 	gender VARCHAR(20)
-- 	);

-- INSERT INTO Cat2(name, age, gender) VALUES ("Luci", 3,"Female");

INSERT INTO Cat2(name, age, gender) VALUES ("rimmi", 3,"Female");

INSERT INTO Cat2(name, age, gender) VALUES ("pinky", 5,"Female");

INSERT INTO Cat2(name, age, gender) VALUES ("duccy", 7,"male");

INSERT INTO Cat2(name, age, gender) VALUES ("puki", 3,"Female");

INSERT INTO Cat2(name, age, gender) VALUES ("Tom", 10,"male");
    