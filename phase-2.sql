create table company(
    licence char(18),
    name varchar(20),
    start_date varchar(15),
    address varchar(100),
    primary key (licence)
);

create table brand(
    b_name varchar(20),
    start_date varchar(15),
    company_id char(18) not null ,
    primary key (b_name),
    foreign key (company_id) references company(licence)
);

create table product(
    barcode char(12),
    p_name varchar(20),
    weight int,
    brand_name varchar(20) not null ,
    primary key (barcode),
    foreign key (brand_name) references brand(b_name)
);

create table distributer(
    username varchar(15),
    email varchar(50),
    address varchar(100),
    work_time varchar(20),
    primary key (username)
);

create table customer(
    first_name varchar(10),
    last_name varchar(10),
    national_id char(10),
    province varchar(15),
    city varchar(15),
    street varchar(20),
    phone_number char(11),
    primary key (national_id)
);

create table type(
    t_id int  auto_increment,
    t_name varchar(20),
    primary key (t_id)
);

create table product_type(
    p_id char(12),
    t_id int,
    foreign key (p_id) references product(barcode),
    foreign key (t_id) references type(t_id)
);

create table brand_type(
    brand_id varchar(20),
    t_id int,
    foreign key (brand_id) references brand(b_name),
    foreign key (t_id) references type(t_id)
);

create table distributer_products (
    id int not null auto_increment,
    product_id char(12),
    distributer_id varchar(15),
    primary key (id),
    foreign key (product_id) references product(barcode),
    foreign key (distributer_id) references distributer(username)
);

create table inventory(
    id int ,
    number int not null ,
    price int not null ,
    foreign key (id) references distributer_products(id),
    primary key (id)
);

create table customer_order(
    order_id int not null auto_increment,
    customer_id char(10),
    inventory_id int,
    number int,
    order_date varchar(20),
    primary key (order_id),
    foreign key (customer_id) references customer(national_id),
    foreign key (inventory_id) references inventory(id)
);


