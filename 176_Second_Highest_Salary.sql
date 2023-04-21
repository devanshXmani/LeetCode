Select 
    Max(Salary) AS SecondHighestSalary 
from Employee 
    where Salary < (
                     Select Max(Salary) from Employee
                   );
