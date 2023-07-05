CREATE USER 'john_stones'@'localhost' IDENTIFIED BY 'johnstones2000john';
REVOKE ALL PRIVILEGES ON *.* FROM 'john_stones'@'localhost';
GRANT SELECT on *.* TO 'john_stones'@'localhost';

