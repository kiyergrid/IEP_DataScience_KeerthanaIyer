-- Nth Highest Salary --

CREATE FUNCTION getNthHighestSalary(n INT) RETURNS INT
BEGIN
    RETURN (
        SELECT DISTINCT salary 
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET n - 1
    );
END;
