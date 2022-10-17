/* 3week: 제품 주문 수량 합계가 가장 많은 상위 10개 제품 */
select productName, t1.productCode, productVendor,
	   sum(quantityOrdered) as sum_quantityOrdered
from classicmodels.products t1
inner join classicmodels.orderdetails t2
on t1.productCode = t2.productCode
group by productCode
order by sum_quantityOrdered desc
limit 10;

/* 2week: Review */
select productVendor as 판매사,
	   sum(MSRP-buyPrice) as 이익합계,
       avg(MSRP-buyPrice) as 이익평균,
       max(MSRP-buyPrice) as 최대이익,
       min(MSRP-buyPrice) as 최소이익
from classicmodels.products
group by 판매사
order by 이익합계 desc
limit 5;

