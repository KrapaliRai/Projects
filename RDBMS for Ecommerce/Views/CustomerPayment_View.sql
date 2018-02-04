CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `custmerpayment_details` AS
    SELECT 
        `customers`.`CustomersFN` AS `FirstName`,
        `customers`.`CustomersLN` AS `LastName`,
        `customerpaymentmethods`.`Customers_CustomerId` AS `Customers_CustomerId`,
        `paymentmethods`.`PaymentMethodDescription` AS `PaymentMethodDescription`,
        `customerpaymentmethods`.`CreditCardNumber` AS `CreditCardNumber`
    FROM
        ((`paymentmethods`
        JOIN `customerpaymentmethods` ON ((`paymentmethods`.`PaymentMethodCode` = `customerpaymentmethods`.`PaymentMethods_PaymentMethodCode`)))
        JOIN `customers` ON ((`customerpaymentmethods`.`Customers_CustomerId` = `customers`.`CustomerId`)))