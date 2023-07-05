# costumers
insert into customer values ("Kimberly","Johnson","4916793561","Tehran","Tehran","Enghelab","56294396101");
insert into customer values ("Charles","Craft","5340313237","Tehran","Tehran","Valiasr","20338029562");
insert into customer values ("Jill","Bloomer","5569201367","Esfahan","Esfahan","Azadi","60154436035");
insert into customer values ("Nicholas","More","5553834764","Tehran","Tehran","NirooHavaEE","81683839007");
insert into customer values ("Duane","Scales","5365146159","Tehran","Tehran","Enghelab","31285435313");

# distributer
insert into distributer values("Hathead04","NancyJCollins@dayrep.com","Los Angeles, CA 90017","8-17");
insert into distributer values("Roak1987","PattyRBarnes@teleworm.us","Little Rock, AR 72201","8-17");
insert into distributer values("Oushavinge97","DomingoPBryant@dayrep.com","Camden, NJ 08102","8-17");
insert into distributer values("Neventold","GregoryTFrost@armyspy.com","Union City, NJ 07087","8-17");

# company
insert into company values ("548537439302787463","McDuff","26/10/2000","New Orleans, LA 70112");
insert into company values ("151245133250155382","Capitalcorp","12/4/1960","Colorado Springs, CO 80903");
insert into company values ("448345974657056687","Hills Supermarkets","18/11/1990","Lagrange, GA 30240");
insert into company values ("453430376170093556","Thom McAn Store","4/3/1992","Oakland, CA 94607");
insert into company values ("895426600291241364","Kleinhans","22/6/2002","Golden Valley, MN 55427");
insert into company values ("345419102901523199","Peaches","2/7/1978","Knoxville, TN 37909");

# type
insert into  type (t_name)
VALUES
('Type A'),
('Type B'),
('Type C'),
('Type D'),
('Type E'),
('Type F'),
('Type G'),
('Type H'),
('Type I'),
('Type J');

# brand
INSERT INTO brand (b_name,start_date,company_id)
VALUES
( 'Brand A', '2005-06-30', "548537439302787463"),
( 'Brand B', '2012-08-12', "453430376170093556"),
( 'Brand C', '2009-04-19', "895426600291241364"),
( 'Brand D', '1990-11-23', "548537439302787463"),
( 'Brand E', '2007-02-14', "548537439302787463"),
( 'Brand F', '2016-09-08', "151245133250155382"),
( 'Brand G', '2003-07-01', "151245133250155382"),
( 'Brand H', '2014-05-25', "453430376170093556");

#product
INSERT INTO product (p_name, barcode, weight, brand_name)
VALUES
( 'Product A1', "123456789012", 100, 'Brand A'),
( 'Product A2', "234567890123", 200,  'Brand A'),
( 'Product A3', "345678901234", 150,  'Brand A'),
( 'Product B1', "456789012345", 75,  'Brand B'),
( 'Product B2', "567890123456", 125,  'Brand B'),
( 'Product C1', "678901234567", 300,  'Brand C'),
( 'Product D1', "789012345678", 50, 'Brand D'),
( 'Product E1', "890123456789", 175,   'Brand E'),
( 'Product F1', "901234567890", 225, 'Brand F'),
( 'Product G1', "111111111111", 250,  'Brand G'),
( 'Product H1', "222222222222", 275,  'Brand H'),
( 'Product I1', "333333333333", 200, 'Brand A');


# product_type
insert into product_type(p_id, t_id)
values
    ("123456789012",1),
    ("234567890123",1),
    ("345678901234",1),
    ("456789012345",2),
    ("567890123456",2),
    ("678901234567",3),
    ("789012345678",4),
    ("890123456789",5),
    ("901234567890",6),
    ("111111111111",7),
    ("222222222222",8),
    ("333333333333",1);


# distribute_products

iNSERT INTO distributer_products (id,distributer_id, product_id)
VALUES
    ( 1,"Hathead04", "123456789012"),
    ( 2,"Hathead04", "234567890123"),
    ( 3,"Hathead04", "345678901234"),
    ( 4, "Hathead04","456789012345"),
    ( 5,"Hathead04",  "567890123456"),
    (6,"Oushavinge97",  "123456789012"),
    (7,"Oushavinge97", "234567890123"),
    (8,"Oushavinge97", "345678901234"),
    (9, "Oushavinge97","456789012345"),
    (10, "Oushavinge97","567890123456");

insert into inventory (id, number, price)
values
    (1,10, 100.00),
    (2,15, 150.00),
    (3,20, 200.00),
    (4,25, 250.00),
    (5,30, 300.00),
    (6, 12, 120.00),
    (7 ,18, 180.00),
    (8,24, 240.00),
    (9, 30, 300.00),
    (10,36, 360.00);

INSERT INTO customer_order (order_id, customer_id, inventory_id, number, order_date)
VALUES
(1, 4916793561, 1, 5, '2023-06-01'),
(2, 5340313237, 3, 10, '2023-06-02'),
(3, 5569201367, 2, 8, '2023-06-03'),
(4, 5553834764, 5, 12, '2023-06-04'),
(5, 5365146159, 4, 15, '2023-06-05'),
(6, 5340313237,  6, 20, '2023-06-06'),
(7, 5365146159,  5, 7, '2023-06-07'),
(8, 4916793561,  7, 11, '2023-06-08'),
(9, 5365146159,10, 9, '2023-06-09'),
(10, 4916793561,  4, 18, '2023-06-10'),
(11, 4916793561,  3, 6, '2023-06-11'),
(12, 5340313237, 5, 8, '2023-06-12'),Los
(13, 5569201367,2, 10, '2023-06-13'),
(14, 5553834764,  10, 22, '2023-06-14'),
(15, 5365146159,  4, 17, '2023-06-15'),
(16, 5365146159,3, 19, '2023-06-16'),
(17, 5365146159, 5, 9, '2023-06-17'),
(18, 4916793561,9, 14, '2023-06-18'),
(19, 5365146159,  1, 12, '2023-06-19'),
(20, 5340313237, 4, 25, '2023-06-20'),
(21, 4916793561, 5, 11, '2023-06-21'),
(22, 5340313237, 10, 6, '2023-06-22'),
(23, 5569201367, 1, 9, '2023-06-23'),
(24, 5553834764, 7, 13, '2023-06-24'),
(25, 5365146159,4, 20, '2023-06-25');







