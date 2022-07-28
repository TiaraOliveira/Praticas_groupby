--questão1
SELECT COUNT("endDate") as currentExperiences 
FROM experiences e;

--questão2
SELECT "userId" as id, COUNT("userId") as educations
FROM educations
GROUP BY "userId"

--questão3
SELECT u.name, COUNT("writerId") as testimonailCount 
FROM testimonials t
JOIN users u 
ON u.id = t."writerId"
WHERE "writerId" = 435
GROUP BY u.name;

--questão4
SELECT MAX(salary) as maximumSalary, roles.name as role
FROM jobs
JOIN roles 
ON roles.id = jobs."roleId"
WHERE jobs.active=true
GROUP BY "roleId", role 
ORDER BY maximumSalary ;

