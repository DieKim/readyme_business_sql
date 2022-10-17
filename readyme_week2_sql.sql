/* Q1. products 테이블 전체 확인 */
select * from classicmodels.products;

/* Q2-1. 고른 칼럼 출력 */
select productName, productVendor, quantityInStock, buyPrice, MSRP
from classicmodels.products;

/* Q2-2. 데이터 필터링 */
select productName, productVendor, quantityInStock, buyPrice, MSRP
from classicmodels.products
where quantityInStock <= 100;

select productName, productVendor, quantityInStock, buyPrice, MSRP
from classicmodels.products
where productName like '1999%';

/* Q3. 데이터 정렬 */
select productName, productVendor, quantityInStock, buyPrice, MSRP,
	   MSRP-buyPrice as Profit
from classicmodels.products
where quantityInStock >= 1000
order by Profit desc, quantityInStock desc;

select productVendor as 판매사,
	   sum(MSRP-buyPrice) as 이익합계,
       avg(MSRP-buyPrice) as 이익평균,
       max(MSRP-buyPrice) as 최대이익,
       min(MSRP-buyPrice) as 최소이익
from classicmodels.products
group by productVendor
order by 이익합계 desc
limit 5;

