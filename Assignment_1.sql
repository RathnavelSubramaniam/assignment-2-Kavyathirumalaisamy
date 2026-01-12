SELECT SUM(SALES), AVG(SALES)
FROM MARKET_FACT;

SELECT count(Cust_id) as total  ,Region
FROM cust_dimen
GROUP BY Region
ORDER BY total desc;

SELECT Region, max(Cust_id) as max
FROM cust_dimen
GROUP BY Region
ORDER BY max;

SELECT Prod_id, sum(Order_Quantity) AS Solds
FROM market_fact
GROUP BY Prod_id
ORDER BY Solds;

SELECT P.Product_Category, sum(m.profit) as profit
From Prod_dimen as P
INNER JOIN market_fact as m
ON P.Prod_id=m.Prod_id
GROUP BY P.Product_Category
ORDER BY profit desc;

SELECT P.Product_Category, P.Product_Sub_Category, sum(profit) as profit
FROM prod_dimen as P
INNER JOIN market_fact as m
ON P.Prod_id=m.Prod_id
GROUP BY P.Product_Category,P.Product_Sub_Category
ORDER BY Profit;

SELECT Customer_Name,sum(order_quantity) as orders
FROM cust_dimen as c, market_fact as m, prod_dimen as p
WHERE c.Cust_id=m.Cust_id and p.Prod_id=m.Prod_id and 
      c.Region="Atlantic" and
      p.Product_Sub_Category="tables"
GROUP BY Customer_Name;



    

