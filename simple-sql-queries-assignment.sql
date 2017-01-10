-- see the readme for the problem
CREATE TABLE person (
  id INT NOT null AUTOINCREMENT,
  name TEXT,
  age INTEGER,
  height INTEGER,
  city TEXT,
  favoriteColor TEXT,
  PRIMARY KEY (id)
);

SELECT * FROM person

INSERT INTO person
(name, age, height, city, favoriteColor)
VALUES ('franck', 23, 189, 'Hell', 'light-urple');

INSERT INTO person
(name, age, height, city, favoriteColor)
VALUES ('shauna', 45, 125, 'Calgary', 'red');

INSERT INTO person
(name, age, height, city, favoriteColor)
VALUES ('derp', 17, 185, 'SLC', 'blue');

INSERT INTO person
(name, age, height, city, favoriteColor)
VALUES ('sir', 4, 46, 'Edmonton', 'grey');

INSERT INTO person
(name, age, height, city, favoriteColor)
VALUES ('Macy', 30, 201, 'Spring Coulee', 'Black');

SELECT name, height FROM person
ORDER BY height DESC

SELECT * FROM person
ORDER BY height ASC

SELECT * FROM person
ORDER BY age DESC

SELECT * FROM person
WHERE age > 20

SELECT * FROM person
WHERE age = 18

SELECT * FROM person
WHERE age < 20 OR age > 30

SELECT * FROM person
WHERE age != 27

SELECT * FROM person
WHERE favoriteColor != 'red'

SELECT * FROM person
WHERE favoriteColor != 'red' AND favoriteColor != 'blue';

SELECT * FROM person
WHERE favoriteColor = 'orange' AND favoriteColor = 'green';

SELECT * FROM person
WHERE favoriteColor in ('orange', 'blue')

SELECT * FROM person
WHERE favoriteColor in ('yellow', 'light-urple')
-- new order TABLE

CREATE TABLE Orders(
  productName TEXT,
  productPrice INTEGER,
  quantity INTEGER,
  personId INTEGER PRIMARY KEY AUTOINCREMENT
)

INSERT INTO orders
(productName, productPrice, quantity)
VALUES ('SPE', 68, 1)

INSERT INTO orders
(productName, productPrice, quantity)
VALUES ('hotdog', 6, 3)

INSERT INTO orders
(productName, productPrice, quantity)
VALUES ('fries', 4, 1)

INSERT INTO orders
(productName, productPrice, quantity)
VALUES ('milkshake', 5, 5)

INSERT INTO orders
(productName, productPrice, quantity)
VALUES ('t-shirt', 15, 1)

SELECT * FROM orders

select sum(quantity) from orders

SELECT personId, sum(productPrice) FROM orders
GROUP BY personId

-- artists part of the assignment

INSERT INTO Artist
(Name)
VALUES('Modest Mouse') -- DID THIS WITH A COUPLE OTHER ARTISTS, THE TABLE ALREADY HAS A BUNCH OF STUFF ON IT

Select * FROM Artist
ORDER BY Name DESC

Select * FROM Artist
ORDER BY ArtistId asc
limit 5

Select * FROM Artist
where Name like 'Black%'

Select * FROM Artist
where Name like '%Black%'

--EMPLOYEE TABLE

INSERT INTO Employee
(LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES ('Low', 'Jon', 'Wiener Man', 'Allah', 1984-02-23, 2002-05-12, 'nowhere st. nowhere', 'Waterton', 'AB', )

SELECT FirstName, LastName from employee
Where City like 'calgary'

SELECT FirstName, LastName from employee
Order by birthdate asc
limit 1

SELECT FirstName, LastName from employee
Order by birthdate desc
limit 1

Select * FROM Employee
where ReportsTo = 2

Select count(*) FROM Employee
where city like 'lethbridge'

-- Invoice bit

SELECT Count(*) FROM Invoice
where BillingCountry = 'USA'

SELECT Max(Total) FROM Invoice

SELECT Min(Total) FROM Invoice

SELECT * FROM Invoice
where total > 5

SELECT count(*) as 'orders less than 5' FROM Invoice
where total < 5

SELECT count(*) FROM Invoice
where BillingState in ('CA', 'TX', 'AZ')

SELECT avg(Total) FROM Invoice

SELECT sum(Total) FROM Invoice








X
