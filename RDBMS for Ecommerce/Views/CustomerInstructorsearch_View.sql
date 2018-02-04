CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `course_instructor_search` AS
    SELECT 
        `courses`.`Title` AS `Title`,
        `courses`.`CoursesSynopsis` AS `CoursesSynopsis`,
        `courses`.`NumberOfLectures` AS `NumberOfLectures`,
        `instructors`.`InstructorFN` AS `InstructorFN`,
        `instructors`.`InstructorsLN` AS `InstructorsLN`,
        `instructors`.`InstructorsQualification` AS `InstructorsQualification`,
        `specialization`.`SpecializationDescription` AS `SpecializationDescription`
    FROM
        ((`courses`
        JOIN `instructors` ON ((`courses`.`Instructors_InstructorId` = `instructors`.`InstructorId`)))
        JOIN `specialization` ON ((`instructors`.`Specialization_SpecializationCode` = `specialization`.`SpecializationCode`)))