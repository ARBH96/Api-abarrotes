CREATE TABLE product (
    name VARCHAR(255) PRIMARY KEY,
    description TEXT,
    price DECIMAL(10, 2),
    SKU VARCHAR(50)
);


CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description TEXT,
    price DECIMAL(10, 2),
    SKU VARCHAR(50)
);


CREATE TABLE client (
    client_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255),
    phone VARCHAR(20),
    address VARCHAR(255),
    postal_code VARCHAR(10),
    neighborhood VARCHAR(100),
    City VARCHAR(100)
);

CREATE TABLE sale (
    sale_id INT PRIMARY KEY,
    date_sale DATE,
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES client(client_id)
);

CREATE TABLE sale_product (
    sale_id INT,
    name_product VARCHAR(255),
    amount INT,
    PRIMARY KEY (sale_id, name_product),
    FOREIGN KEY (sale_id) REFERENCES sale(sale_id),
    FOREIGN KEY (name_product) REFERENCES product(name)
);



INSERT INTO product (product_id,name, description, price, SKU)
VALUES 
    (1,'Galletas Marías', 'Abarrotes', 15.00, 'SKU001'),
    (2,'Yakult', 'Lácteos', 07.00, 'SKU002'),
    (3,'Aceite', 'Abarrotes', 39.99, 'SKU003'),
	(4,'Arroz', 'Abarrotes',19.99, 'SKU004'),
	(5,'Frijol', 'Abarrotes',29.99 , 'SKU005'),
	(6,'Leche', 'Lácteos',19.99, 'SKU006'),
	(7,'Azúcar', 'Abarrotes',29.99, 'SKU007'),
	(8,'Café', 'Abarrotes',09.99, 'SKU008'),
	(9,'Sal', 'Abarrotes',19.99, 'SKU009'),
	(10,'Mayonesa', 'Abarrotes',29.99, 'SKU010'),
	(11,'Harina', 'Harinas',09.99, 'SKU011'),
	(12,'Huevo', 'Abarrotes', 79.99, 'SKU012'),
	(13,'Gelatina', 'Abarrotes',19.99, 'SKU013'),
	(14,'Sopa', 'Abarrotes',15.99, 'SKU014'),
	(15,'Vinagre', 'Abarrotes',29.99, 'SKU015'),
	(16,'Queso', 'Lácteos',30.99, 'SKU016'),
	(17,'Mantequilla', 'Lácteos',49.99, 'SKU017'),
	(18,'Media crema', 'Lácteos',19.99, 'SKU018'),
	(19,'Palomitas', 'Botanas',15.00, 'SKU019'),
	(20,'Papel higiénico', 'Higiene personal', 79.99, 'SKU020'),
	(21,'Toallas sanitarias', 'Higiene personal',60.99, 'SKU021'),
	(22,'Pasta de dientes', 'Higiene personal',59.99, 'SKU022'),
	(23,'Jabón de tocador', 'Higiene personal',49.99, 'SKU023'),
	(24,'Cloro', 'Uso doméstico',29.99, 'SKU024'),
	(25,'Cerillos', 'Uso doméstico',19.99, 'SKU025'),
	(26,'Cigarros', 'Otros',59.99, 'SKU026');

INSERT INTO client (client_id, first_name, last_name, email, phone, address, postal_code, neighborhood, City)
VALUES 
    (1, 'María', 'González', 'maria@gonza.com', '987-654-3210', 'Avenida Secundaria 456', '44970', 'Norte', 'Guadalajara'),
    (2, 'Pedro', 'Ramírez', 'pedro@rami.com', '555-123-4567', 'Calle Comercial 789', '64268', 'Sur', 'Monterrey'),
	(3, 'Luis', 'Mora', 'luis@mora.com', '225-173-4967', 'Calle Ánimas 123', '77500', 'Norte', 'Cancún'),
	(4, 'Leticia', 'Domínguez', 'leticia@domin.com', '255-183-8567', 'Calle Naranjos 234', '68016', 'Sur', 'Oaxaca'),
	(5, 'Misael', 'Córtes', 'misael@cortes.com', '155-123-4567', 'Calle Guanabana 345', '01269', 'Norte', 'Ciudad de México'),
	(6, 'Sara', 'Córtes', 'sara@cortes.com', '905-123-7867', 'Calle 20 de Noviembre 384', '64268', 'Sur', 'Monterrey'),
	(7, 'Jaime', 'Herrera', 'jaime@herrera.com', '565-173-4397', 'Calle Celestial 345', '44970', 'Norte', 'Guadalajara'),
	(8, 'Oswaldo', 'Torres', 'oswaldo@torres.com', '535-123-4067', 'Calle Carranza 456', '77500', 'Sur', 'Cancún'),
	(9, 'Ana', 'Flores', 'ana@flores.com', '655-623-9567', 'Calle cerezos 567', '68016', 'Norte', 'Oaxaca'),
	(10, 'Julio', 'Morales', 'julio@morales.com', '785-343-4590', 'Avenida Ignacio 678', '01269', 'Sur', 'Ciudad de México'),
	(11, 'Delmer', 'Hernández', 'delmer@hernandez.com', '987-123-3457', 'Avenida Lázaro Cárdenas 789', '44970', 'Norte', 'Guadalajara'),
	(12, 'Deysi', 'Vázquez', 'deysi@vazquez.com', '125-123-6867', 'Calle Carranza 890', '64160', 'Sur', 'Monterrey'),
	(13, 'Daniela', 'Cabrera', 'daniela@cabrera.com', '345-123-2897', 'Calle Almendras 901', '77500', 'Sur', 'Cancún'),
	(14, 'Anibal', 'Hernández', 'anibal@hernan.com', '115-123-9087', 'Calle Agua Santa 001', '68023', 'Norte', 'Oaxaca'),
	(15, 'Mariana', 'Alvarado', 'mariana@alvarado.com', '565-783-4567', 'Calle Agua Santa 002', '01180', 'Norte', 'Ciudad de México'),
	(16, 'Bertha', 'Alvarez', 'bertha@alvarez.com', '675-123-3427', 'Calle Flores 002', '44910', 'Sur', 'Guadalajara'),
	(17, 'Azucena', 'Baños', 'azucena@baños.com', '678-123-4327', 'Calle Bosques 023', '64160', 'Norte', 'Monterrey'),
	(18, 'Daniela', 'Bocanegra', 'daniela@bocanegra.com', '905-733-4567', 'Calle Ébano 203', '77500', 'Sur', 'Cancún'),
	(19, 'Patricia', 'Caballero', 'patricia@caballero.com', '456-123-4567', 'Calle Ruiz Cortinez 377', '68023', 'Norte', 'Oaxaca'),
	(20, 'Alondra', 'Campos', 'alondra@campos.com', '990-123-4567', 'Avenida Coatepec 275', '01180', 'Sur', 'Ciudad de México'),
	(21, 'Jesús', 'Carrillo', 'jesus@carrillo.com', '889-123-4567', 'Avenida Coatepec 267', '44910', 'Norte', 'Guadalajara'),
	(22, 'Ana', 'Cordova', 'ana@cordova.com', '555-478-4567', 'Avenida Revolución 789', '64229', 'Sur', 'Monterrey'),
	(23, 'Mirna', 'Galindo', 'mirna@galindo.com', '555-304-4567', 'Avenida Revolución 456', '77500', 'Norte', 'Cancún'),
	(24, 'Nadia','Trujillo', 'nadia@trujillo.com', '555-123-7829', 'Calle Bosque 111', '68013', 'Sur', 'Oaxaca'),
	(25, 'Rosario','Peregrino', 'rosario@peregrino.com', '865-123-4567', 'Calle Guanabana 222', '01729', 'Norte', 'Ciudad de México'),
	(26, 'Nancy', 'García', 'nancy@garcia.com', '222-123-4567', 'Calle Agua Dulce 333', '44270', 'Sur', 'Guadalajara'),
	(27, 'Abel', 'Ramírez', 'abel@ramirez.com', '333-123-4567', 'Calle Agua Dulce 444', '64229', 'Norte', 'Monterrey'),
	(28, 'Elvira', 'Jacinto', 'elvira@jacinto.com', '558-123-4567', 'Calle Comercial 555', '77500', 'Sur', 'Cancún'),
	(29, 'Virginia', 'López', 'virginia@lopez.com', '999-123-4567', 'Calle Comercial 666', '68013', 'Norte', 'Oaxaca'),
	(30, 'Julio', 'Torres', 'julio@torres.com', '666-123-4567', 'Calle 20 de noviembre 777', '01729', 'Sur', 'Ciudad de México'),
	(31, 'Clara', 'Corpus', 'clara@corpus.com', '555-567-4567', 'Calle 20 de noviembre 888', '44270', 'Norte', 'Guadalajara'),
	(32, 'Luis', 'Mendoza', 'luis@mendoza.com', '555-090-4567', 'Calle Ébano 999', '64186', 'Sur', 'Monterrey'),
	(33, 'Blanca', 'Brindis', 'blanca@brindis.com', '555-123-3478', 'Calle Ébano 100', '77500', 'Norte', 'Cancún'),
	(34, 'Felipe', 'Reyes', 'felipe@reyes.com', '555-123-2345', 'Calle Celestial 200', '68028', 'Sur', 'Oaxaca'),
	(35, 'Maribel', 'Reyes', 'maribel@reyes.com', '555-123-0967', 'Calle Celestial 300', '01125', 'Norte', 'Ciudad de México'),
	(36, 'Melchor', 'Solano', 'melchor@solano.com', '777-123-4567', 'Avenida Xalapa 400', '44160', 'Sur', 'Guadalajara'),
	(37, 'Sergio', 'Rendón', 'sergio@rendon.com', '885-123-4567', 'Avenida Xalapa 500', '64186', 'Norte', 'Monterrey'),
	(38, 'Nayeli', 'Ramos', 'nayeli@ramos.com', '555-123-2938', 'Calle Arquitectos 600', '77500', 'Sur', 'Cancún'),
	(39, 'Rodolfo', 'Sandoval', 'rodolfo@sandoval.com', '555-409-4567', 'Calle Arquitectos 756', '68028', 'Sur', 'Oaxaca'),
	(40, 'Hector', 'Torres', 'hector@torres.com', '555-123-3947', 'Calle Ámericas 943', '01125', 'Norte', 'Ciudad de México'),
	(41, 'Leticia', 'Cruz', 'leticia@cruz.com', '555-123-2495', 'Avenida Ámericas 989', '64186', 'Sur', 'Monterrey'),
	(42, 'Isabel', 'Gallegos', 'isabel@gallegos.com', '555-395-4567', 'Calle Cerezos 459', '64186', 'Norte', 'Monterrey');


INSERT INTO sale (sale_id, date_sale, client_id)
VALUES 
    (1, '2024-07-01', 1),  
    (2, '2024-07-01', 2),
	(3, '2024-07-01',4),
	(4, '2024-07-02',5),
	(5, '2024-07-02',7),
	(6, '2024-07-02',8),
	(7, '2024-07-03',10),
	(8, '2024-07-03',11),
	(9, '2024-07-03',12),
	(10, '2024-07-04',14),
	(11, '2024-07-04',15),
	(12, '2024-07-04',17),
	(13, '2024-07-05',18),
	(14, '2024-07-05',20),
	(15, '2024-07-05',21),
	(16, '2024-07-06',22),
	(17, '2024-07-06',24),
	(18, '2024-07-06',25),
	(19, '2024-07-07',27),
	(20, '2024-07-07',28),
	(21, '2024-07-07',30),
	(22, '2024-07-08',31),
	(23, '2024-07-08',32),
	(24, '2024-07-08',34),
	(25, '2024-07-09',35),
	(26, '2024-07-09',37),
	(27, '2024-07-09',38),
	(28, '2024-07-01',40),
	(29, '2024-07-01',41),
	(30, '2024-07-01',42),
	(31, '2024-07-02',1),
	(32, '2024-07-02',2),
	(33, '2024-07-02',4),
	(34, '2024-07-03',5),
	(35, '2024-07-03',7),
	(36, '2024-07-03',8),
	(37, '2024-07-04',10),
	(38, '2024-07-04',11),
	(39, '2024-07-04',12),
	(40, '2024-07-05',14);  

INSERT INTO sale_product (sale_id, name_product, amount)
VALUES 
    (1, 'Leche', 10),
    (2, 'Huevo', 1),
    (3, 'Arroz', 2),
    (4, 'Frijol', 3),
	(5, 'Sopa',1),
	(6, 'Huevo', 8),
	(7, 'Leche',2),
	(8, 'Aceite',6),
	(9, 'Frijol',5),
	(10, 'Café',2),
	(11, 'Harina',1),
	(12, 'Galletas Marías',2),
	(13, 'Toallas sanitarias',1),
	(14, 'Papel higiénico',2),
	(15, 'Café',1),
	(16, 'Leche',5),
	(17, 'Papel higiénico',1),
	(18, 'Aceite',2),
	(19, 'Mantequilla',1),
	(20, 'Toallas sanitarias',1),
	(21, 'Papel higiénico',4),
	(22, 'Pasta de dientes',3),
	(23, 'Palomitas',1),
	(24, 'Pasta de dientes',2),
	(25, 'Mayonesa',1),
	(26, 'Palomitas',2),
	(27, 'Vinagre',1),
	(28, 'Jabón de tocador',3),
	(29, 'Harina',1),
	(30, 'Cigarros',3),
	(31, 'Sopa',4),
	(32, 'Jabón de tocador',1),
	(33, 'Queso',2),
	(34, 'Yakult',1),
	(35, 'Mantequilla',1),
	(36, 'Galletas Marías',2),
	(37, 'Arroz',3),
	(38, 'Huevo',1),
	(39, 'Cigarros',2),
	(40, 'Queso',1);

/*1.ID de los clientes de la Ciudad de Monterrey:*/
SELECT client_id
FROM client
WHERE city = 'Monterrey';

/*2.ID y descripción de los productos que cuesten menos de 15 pesos:*/
SELECT name, description
FROM product
WHERE price < 15;

/*4.ID y nombre de los clientes que no aparecen en la tabla de ventas (Clientes que no han comprado productos):*/
SELECT client_id, first_name, last_name
FROM client
WHERE client_id NOT IN (SELECT DISTINCT client_id FROM sale);
