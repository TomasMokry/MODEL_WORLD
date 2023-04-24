create database modelWorld;

use modelWorld;
create table products
(id int primary key auto_increment, partNo int, name varchar(50), description varchar(300), isForSale boolean, price int);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23001, "cabinet", "Rhino 3D model of cabinet", 1, 21);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23002, "sofa", "Rhino 3D model of sofa", 1, 20);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23003, "coffee table", "Rhino 3D model of coffee table", 0, 15);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23004, "dining chair", "Rhino 3D model of dining chair", 1, 8);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23005, "bookshelf", "Rhino 3D model of bookshelf", 1, 25);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23006, "bed", "Rhino 3D model of bed", 0, 30);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23007, "nightstand", "Rhino 3D model of nightstand", 1, 12);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23008, "desk", "Rhino 3D model of desk", 1, 35);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23009, "dresser", "Rhino 3D model of dresser", 1, 28);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23010, "filing cabinet", "Rhino 3D model of filing cabinet", 1, 20);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23011, "recliner", "Rhino 3D model of recliner", 1, 40);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23012, "ottoman", "Rhino 3D model of ottoman", 0, 10);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23013, "stool", "Rhino 3D model of stool", 1, 7);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23014, "bench", "Rhino 3D model of bench", 1, 22);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23015, "tv stand", "Rhino 3D model of tv stand", 1, 18);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23016, "bar stool", "Rhino 3D model of bar stool", 0, 12);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23017, "dining table", "Rhino 3D model of dining table", 1, 40);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23018, "coffee table", "Rhino 3D model of coffee table", 1, 25);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23019, "bookshelf", "Rhino 3D model of bookshelf", 1, 30);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23020, "bed", "Rhino 3D model of bed", 1, 80);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23021, "sofa", "Rhino 3D model of sofa", 1, 120);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23022, "armoire", "Rhino 3D model of armoire", 1, 70);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23023, "chest of drawers", "Rhino 3D model of chest of drawers", 1, 50);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23024, "couch", "Rhino 3D model of couch", 0, 150);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23025, "side table", "Rhino 3D model of side table", 1, 20);

INSERT INTO products(partNo, name, description, isForSale, price) VALUES
(23026, "ottoman", "Rhino 3D model of ottoman", 0, 15);


select * from products;

DROP database modelWorld;

