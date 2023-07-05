create view distributor_distributes as (select d.username,p.p_name,p.brand_name from distributer_products as dp
                            inner join distributer as d on dp.distributer_id = d.username
                                inner join product as p on dp.product_id = p.barcode);


create view customer_ordersas as (select * from customer_order as co inner join customer as c on co.customer_id = c.national_id )

create view product_type_brand_company as (select * from product as p inner  join brand on p.brand_name = brand.b_name inner join company on brand.company_id = company.licence inner join product_type as pt on p.barcode = pt.p_id)
