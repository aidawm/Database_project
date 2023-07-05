create assertion same_barcode check (
    not exists(
        select p1.barcode from product as p1
            where p1.barcode in (select p2.barcode from product p2 and p1.brand_name != b2.brand_name)
    )
    );

create assertion same_product check(
    not exists (
    select c1.inventory_id from customer_order as c1 where c1.inventory_id in (select c2.inventory_id from customer_order c2 and c1.order_id != c2.order_id)
    )
    );