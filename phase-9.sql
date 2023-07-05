-- To index the inventory level of each product for distributors, we can create an index on the Distributor_Products table's ProductID and Quantity columns.
CREATE INDEX idx_distributor_products_inventory
ON inventory (number);

-- To index the phone number of each customer, we can create an index on the Customer table's PhoneNumber column.
CREATE INDEX idx_customer_phone_number
ON customer (phone_number);

-- To index the name of each brand, we can create an index on the Brand table's BrandName column.
CREATE INDEX idx_brand_name
ON brand (b_name);

-- To index the weight of each product, we can create an index on the Product table's Weight column.
CREATE INDEX idx_product_weight
ON product (weight);