SELECT
	c.customerNumber,
    	c.customerName,
    count(o.orderNumber) AS totalSales
FROM
	  mintclassics.customers AS c
JOIN
	  mintclassics.orders AS o ON c.customerNumber = o.customerNumber
GROUP BY
	  c.customerNumber,c.customerName
ORDER BY
	  totalSales DESC;
