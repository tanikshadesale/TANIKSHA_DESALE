CREATE TABLE student( name char(10) ,age int ,city char(20),salary int ,id int);
INSERT INTO student VALUES("taniksha",18,"palghar",4500,134);
INSERT INTO student VALUES("kashish",19,"virar",6500,245);
INSERT INTO student VALUES("eshika",17,"virar",5400,546);
INSERT INTO student VALUES("dwiti",11,"mumbai",7800,546);
SELECT*FROM student;

SELECT COUNT("dwiti")
FROM student;

SELECT SUM(salary)
FROM student;

SELECT AVG(salary)
FROM student;

SELECT MIN(salary)
FROM student;

SELECT MAX(salary)
FROM student;

SELECT*FROM student
WHERE salary BETWEEN 4000 AND 6000 AND age BETWEEN 15 AND 19;

SELECT id,name FROM student WHERE city LIKE "v%";

SELECT id ,name FROM student WHERE name LIKE "t%";

SELECT name , city FROM student WHERE name LIKE "_sh%";

SELECT id,name FROM student
WHERE city IN("palghar","mumbai");

SELECT*FROM student
WHERE age>17 AND city="palghar";


SELECT*FROM student
WHERE city="mumbai"OR name="dwiti";

SELECT name,city
FROM student WHERE NOT city="virar";

SELECT name ,salary FROM student
ORDER BY name, salary DESC;

SELECT city , count(city) FROM student group by city;



CREATE TABLE employee(ID int, amount int,mode char(30));
INSERT INTO employee VALUES(1,60,"cash");
INSERT INTO employee VALUES(2,30,"credit_card");
INSERT INTO employee VALUES(3,90,"credit card");
INSERT INTO employee VALUES(4,40,"dedit card");
INSERT INTO employee VALUES(4,70,"mobile payement");
INSERT INTO employee VALUES(5,20,"cash");
SELECT*FROM employee;


SELECT mode ,sum(amount) as total
FROM employee
group by mode 
Having sum(amount)>=80;

CREATE TABLE employeee(ID int, NAME char(20), GENDER char(10),DEPARTMENT char(50), EDUCATION char(40), MONTH char(30), SALARY int);
INSERT INTO employeee VALUES(1001,"ajay","M","Engineering","doctor","january",25);
INSERT INTO employeee VALUES(1002,"babloo","M","Engineering","UG","February",23);
INSERT INTO employeee VALUES(1003,"chhavi","F","HR","PG","march",15);
INSERT INTO employeee VALUES(1004,"dheeraj","M","HR","UG","january",12);
INSERT INTO employeee VALUES(1005,"evina","F","marketing","UG","march",16);
INSERT INTO employeee VALUES(1006,"fredy","M","sales","UG","december",10);
INSERT INTO employeee VALUES(1007,"garima","F","sales","PG","march",10);
INSERT INTO employeee VALUES(1008,"hans","M","admin","PG","november",8);
INSERT INTO employeee VALUES(1009,"ivanka","f","admin","intermediate","april",7);
INSERT INTO employeee VALUES(1010,"jai","m","peon","high school","december",4);
SELECT*FROM employeee;


SELECT DEPARTMENT,SUM(SALARY) as total
FROM employeee
WHERE NOT EDUCATION="UG"
group by DEPARTMENT
Having sum(salary)>=20;

SELECT DEPARTMENT,SUM(SALARY) as total_salary
FROM employeee
group by DEPARTMENT
Having sum(SALARY)>=15
ORDER BY total_salary DESC;

SELECT NAME
FROM employeee
WHERE SALARY BETWEEN 14 AND 24;

SELECT DEPARTMENT
FROM employeee
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 35;

