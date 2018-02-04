CREATE DEFINER=`root`@`localhost` PROCEDURE `Shipment_Details`(in customerId int)
BEGIN


Select concat_ws(' ',customers.customersFN,customers.customersLN) 
as StudentName,
customers.customerId , orders.orderId,orders.orderdetails,
shipments.shipmentTrackingNumber,
shipments.shipmentDate

From Customers Inner join Orders
On customers.CustomerId = orders.CustomerId

Inner join shipments
On orders.orderid = shipments.Orders_OrderId

;


END