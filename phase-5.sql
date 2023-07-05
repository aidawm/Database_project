# 1
select dp.distributer_id, dp.product_id,max(co.number)from customer_order co inner join distributer_products dp on dp.id = co.inventory_id
group by dp.distributer_id
order by max(co.number) desc ;

# 2
select customer.city ,sum(customer_order.number) as total_order from customer_order inner join customer on customer_order.customer_id = customer.national_id
group by customer.city
order by sum(customer_order.number) desc ;

# 3
select dp.distributer_id,dp.distributer_id ,sum(co.number) as total_num from customer_order co inner join distributer_products dp on dp.id = co.inventory_id
group by dp.distributer_id
order by total_num desc
limit 5;

# 4

select d.username from distributer as d
where d.username in (select distributer_id from distributer_products as dp where dp.product_id in (select barcode from product where p_name="Product A1")) and d.username in (select distributer_id from distributer_products as dp where dp.product_id in (select barcode from product where p_name="Product A2")) and
      (select sum(number) from distributer_products as dp inner join customer_order on customer_order.inventory_id = dp.id
        where dp.distributer_id = d.username and product_id in (select barcode from product where p_name="Product A1") )>(select sum(number) from distributer_products as dp inner join customer_order on customer_order.inventory_id = dp.id
        where dp.distributer_id = d.username and product_id in (select barcode from product where p_name="Product A2")) ;



# 5
select count(product_id) from customer_order inner join distributer_products on customer_order.inventory_id = distributer_products.id
                  where customer_id  in (select customer_id  from customer_order inner join distributer_products on customer_order.inventory_id = distributer_products.id
                                        group by customer_id
                                        having product_id in (select barcode from product where p_name="Product B2")) group by product_id
                                        order by count(product_id);
