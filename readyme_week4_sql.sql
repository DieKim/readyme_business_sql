/* 목표: 프리미엄 고객 관리를 통한 기업 이윤 극대화 */

select c.customerNumber, 
	   c.customerName, 
       max(o.orderDate) as lastOrder,
	   count(o.orderNumber) as orderCount,
       sum(p.amount) as amountSum,
       sum(p.amount)/count(o.orderNumber) as meanPrice
from classicmodels.customers as c
left join classicmodels.orders as o
on c.customerNumber = o.customerNumber
left join classicmodels.payments as p
on c.customerNumber = p.customerNumber
group by c.customerNumber
order by lastOrder desc, orderCount desc;



