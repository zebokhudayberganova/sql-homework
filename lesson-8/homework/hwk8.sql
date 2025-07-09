

select category, count(*) as total_products from products group by category;

select avg(price) as average_price  from products where category = 'electronics';

select avg(price) as average_price 
from products
where category = 'electronics';


select * from customers where city like 'l%';

select product_name
from products
where product_name like '%er';

select *
from customers
where country like '%a';

select max(price) as highest_price
from products;


select product_name, quantity,
       case 
           when quantity < 30 then 'low stock'
           else 'sufficient'
       end as stock_status
from products;

select country, count(*) as total_customers
from customers
group by country;



select min(quantity) as min_quantity, max(quantity) as max_quantity
from orders;



Medium:

select distinct o.customer_id
from orders o
where o.order_date >= '2023-01-01' and o.order_date < '2023-02-01'
  and o.customer_id not in (
      select distinct customer_id
      from invoices
  );

  select product_name from products
union all
select product_name from products_discounted;

select product_name from products
union
select product_name from products_discounted;


select year(order_date) as order_year, avg(order_amount) as average_order_amount
from orders
group by year(order_date);



select product_name,
       case
           when price < 100 then 'low'
           when price between 100 and 500 then 'mid'
           else 'high'
       end as price_group
from products;


select city,
       sum(case when year = 2012 then population else 0 end) as [2012],
       sum(case when year = 2013 then population else 0 end) as [2013]
into population_each_year
from city_population
group by city;


select product_id, sum(sale_amount) as total_sales
from sales
group by product_id;


select product_name
from products
where product_name like '%oo%';

select year,
       sum(case when city = 'Bektemir' then population else 0 end) as bektemir,
       sum(case when city = 'Chilonzor' then population else 0 end) as chilonzor,
       sum(case when city = 'Yakkasaroy' then population else 0 end) as yakkasaroy
into population_each_city
from city_population
group by year;


select customer_id, sum(invoice_amount) as total_spent
from invoices
group by customer_id
order by total_spent desc
limit 3;


select top 3 customer_id, sum(invoice_amount) as total_spent
from invoices
group by customer_id
order by total_spent desc;


select city, 2012 as year, [2012] as population
from population_each_year
union all
select city, 2013 as year, [2013]
from population_each_year;


select p.product_name, count(s.product_id) as times_sold
from products p
join sales s on p.product_id = s.product_id
group by p.product_name;

select p.product_name, sum(s.quantity) as times_sold
from products p
join sales s on p.product_id = s.product_id
group by p.product_name;



select 'Bektemir' as city, year, bektemir as population
from population_each_city
union all
select 'Chilonzor', year, chilonzor
from population_each_city
union all
select 'Yakkasaroy', year, yakkasaroy
from population_each_city;
