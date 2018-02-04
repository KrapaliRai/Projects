CREATE
DEFINER=`root`@`localhost`
TRIGGER `myproject`.`courses_BEFORE_INSERT`
BEFORE INSERT ON `myproject`.`courses`
FOR EACH ROW
BEGIN

IF new.Instructors_InstructorId Is null then 
set new.CourseStatus_coursestatuscode = 0;

end if;


IF new.BestPrice Is null then 
set new.BestPrice = (new.OriginalPrice * 0.8);

end if;

END