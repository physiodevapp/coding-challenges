/**
* Binary Tree Nodes:
* ``````````````````
* You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
* Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
* Root: If node is root node.
* Leaf: If node is leaf node.
* Inner: If node is neither root nor leaf node.
*/
SELECT
    N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END AS NodeType
FROM BST
ORDER BY N ASC;

/*
* Amber's conglomerate corporation just acquired some new companies.
* Note:
* - The tables may contain duplicate records.
* - The company_code is string, so the sorting should not be numeric. For example,
*   if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
* - Company: The company_code is the code of the company and founder is the founder of the company.
* - Lead_Manager: The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company.
* - Senior_Manager: The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, 
*   and the company_code is the code of the working company.
* - Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, 
*   the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.
* - Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, 
*   the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.
*/
SELECT 
    c.company_code, 
    c.founder, 
    COUNT(DISTINCT lm.lead_manager_code) AS Total_Lead_Managers,
    COUNT(DISTINCT sm.senior_manager_code) AS Total_Senior_Managers,
    COUNT(DISTINCT m.manager_code) AS Total_Managers,
    COUNT(DISTINCT e.employee_code) AS Total_Employees
FROM Company c
LEFT JOIN Lead_Manager lm
ON c.company_code = lm.company_code
LEFT JOIN Senior_Manager sm
ON c.company_code = sm.company_code
LEFT JOIN Manager m
ON c.company_code = m.company_code
LEFT JOIN Employee e
ON c.company_code = e.company_code
GROUP BY c.founder, c.company_code
ORDER BY c.company_code ASC;
