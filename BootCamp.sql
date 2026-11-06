create Database DA_Bootcamp;

use da_bootcamp;
select * from customers;

select * from customers
where churn = 1;

select * from customers
where churn = 1;

## How many customer had more than 10 purchases and still churned

select * from customers
where purchase_frequency > 10 and churn = 1;

select * from sales;
select * from products;

select * from marketing;

## CAC - Customer Acquisition Cost

select Campaign_ID,Channel,Spend,Conversions,
round(Spend/Conversions,2) as CAC from marketing;

## Which are my top 5 best performer campaign as per CAC.
select * from marketing;

select Campaign_ID,Channel,Spend,Conversions,
round(Spend/Conversions,2) as CAC from marketing
order by CAC asc
limit 5;

select Channel, 
count(Campaign_ID) as No_of_Campaigns,
round(avg(round(Spend/Conversions,2) ),2) as Avg_CAC from marketing
group by Channel;
 



