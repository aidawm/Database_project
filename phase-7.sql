ALTER TABLE product ADD is_sold int NOT NULL DEFAULT 0;

UPDATE product SET is_sold = 1 WHERE barcode IN (SELECT i.product_id FROM customer_order inner join distributer_products i on customer_order.inventory_id = i.id);


SET @orderId = 456;
SET @customerNationalId = 5365146159;
SET @invetory_id = 3;
SET @quantity = 5;

START TRANSACTION;
-- Check if the requested product exists and hasn't been sold yet
SELECT * FROM product WHERE barcode = @productId AND is_sold = 0;

-- If the product exists and hasn't been sold, insert a new order record and update the inventory
INSERT INTO customer_order (order_id, customer_id, inventory_id, number, order_date)
VALUES (@orderId, @customerNationalId, @invetory_id,@quantity, "2023-7-28");

UPDATE inventory SET number = number - @quantity WHERE id = @invetory_id;

UPDATE product SET is_sold = 1 WHERE barcode = (select product_id from distributer_products where id=@invetory_id);

COMMIT;