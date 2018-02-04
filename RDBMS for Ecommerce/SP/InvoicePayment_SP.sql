CREATE DEFINER=`root`@`localhost` PROCEDURE `Invoice_Payment_details`(in cust_ID int)
BEGIN

SELECT 
	customers.CustomerId,
    customers.CustomersFN AS FirstName,
    customers.CustomersLN AS LastName,
	orders.OrderId,
	orders.OrderDetails,
    invoices.invoicesnumber,
    invoices.invoicesDetails,
    payments.paymentAmount,
    payments.paymentDate
    
    
    
FROM
	customers
	INNER JOIN
    orders 
    ON customers.CustomerId
    = orders.CustomerId
        
	INNER JOIN
	invoices
    ON orders.OrderId
    = invoices.Orders_OrderId
    
    INNER JOIN
    payments    
    ON invoices.invoicesNumber
    = payments.Invoices_InvoicesNumber
    
    where customers.CustomerId = cust_ID;

END