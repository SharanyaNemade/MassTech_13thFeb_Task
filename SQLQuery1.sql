use sharanya;

CREATE TABLE Department
(
    DeptId INT IDENTITY PRIMARY KEY,
    DeptName VARCHAR(100),
    Status VARCHAR(20)
);

select * from Department;



CREATE PROCEDURE sp_InsertDepartment
    @DeptName VARCHAR(100),
    @Status VARCHAR(20)
AS
BEGIN
    INSERT INTO Department (DeptName, Status)
    VALUES (@DeptName, @Status)
END



CREATE PROCEDURE sp_GetDepartmentById
    @DeptId INT
AS
BEGIN
    SELECT * FROM Department WHERE DeptId = @DeptId
END



select * from Department;



DELETE FROM Department
WHERE DeptId IN (4, 5);



create proc sp_deleteDept
@id int
as
begin
     delete from Department where @id=DeptId
end



/*--------------------------------------------------------------------*/



CREATE TABLE Designation
(
    DesignationId INT IDENTITY PRIMARY KEY,
    DeptName VARCHAR(100),
    DesignationName VARCHAR(100),
    Status VARCHAR(20)
);



CREATE PROCEDURE sp_InsertDesignation
    @DeptName VARCHAR(100),
    @DesignationName VARCHAR(100),
    @Status VARCHAR(20)
AS
BEGIN
    INSERT INTO Designation (DeptName, DesignationName, Status)
    VALUES (@DeptName, @DesignationName, @Status)
END


select * from Designation;