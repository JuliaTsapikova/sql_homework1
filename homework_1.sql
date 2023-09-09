/*
   1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
   Необходимые поля таблицы: product_name (название товара), manufacturer (производитель), product_count (количество), price (цена). Заполните БД произвольными данными.
   2. Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2
   3. Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”

4.* С помощью SELECT-запроса с оператором LIKE / REGEXP найти:
4.1.* Товары, в которых есть упоминание "Iphone"
4.2.* Товары, в которых есть упоминание "Samsung"
4.3.* Товары, в названии которых есть ЦИФРЫ
4.4.* Товары, в названии которых есть ЦИФРА "8" */

use new_database;
 create table new_database.products (
     product_id INT not null auto_increment,
     product_name VARCHAR(50) not null,
     manufacturer VARCHAR(50) not null,
     product_count INT not null,
     price mediumint not null,
     primary key (product_id)
);

INSERT INTO products (product_name, manufacturer, product_count, price) 
VALUES
    ('ноутбук','Samsung','2','100000'),
    ('телефон Iphone8','Apple','10','80000'),
   	('телефон', 'Huawei', '5', '20000'),
  	('телевизор', 'Samsung', '3', '50000');
  
  select product_name, manufacturer, price from products 
  where product_count > 2;
 
 select * from products 
 where manufacturer = 'Samsung';

select * from products 
where product_name regexp 'Iphone';

select * from products 
where product_name regexp 'Samsung';

select * from products 
where product_name like '%8%';

select * from products 
where product_name regexp '[0-9]+$';

