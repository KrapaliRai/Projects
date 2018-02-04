CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `studentcoursedetails` AS
    SELECT 
        `customers`.`CustomersFN` AS `FirstName`,
        `customers`.`CustomersLN` AS `LastName`,
        `orders`.`OrderDetails` AS `OrderDetails`,
        `orderitems`.`OrderItemsPrice` AS `OrderItemsPrice`,
        `courses`.`Title` AS `Title`,
        `courses`.`BestPrice` AS `BestPrice`,
        `coursecategories`.`CategoryDescription` AS `CategoryDescription`
    FROM
        ((((`customers`
        JOIN `orders` ON ((`customers`.`CustomerId` = `orders`.`CustomerId`)))
        JOIN `orderitems` ON ((`orders`.`OrderId` = `orderitems`.`Orders_OrderId`)))
        JOIN `courses` ON ((`orderitems`.`Courses_CourseId` = `courses`.`CourseId`)))
        JOIN `coursecategories` ON ((`courses`.`CourseCategories_CategoryCode` = `coursecategories`.`CategoryCode`)))