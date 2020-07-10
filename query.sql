CREATE TABLE employees(
    _id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name  VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    current_status VARCHAR(30) NOT NULL DEFAULT 'employed'
);

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);


CREATE TABLE cats(
    cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT
);


INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
       
CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(5),
    last_worn INT
);
       
INSERT INTO shirts(article,color,shirt_size,last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);


INSERT INTO shirts(article,color,shirt_size,last_worn)VALUES('polo shirt','purple','M',50);