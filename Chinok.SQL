/*
The Chinook database contains details of an online music store.
Here are some example answers to the question
*/

-- List all customers
select * from Customer c 






-- List all customers. Show only the CustomerId, FirstName and LastName columns

SELECT c.CustomerId,c.FirstName,c.LastName
FROM Customer c

-- List customers in the United Kingdom  
SELECT c.CustomerId,c.FirstName,c.LastName
FROM Customer c
WHERE c.country ='United Kingdom'

-- List customers whose first names begins with an A.
SELECT c.customerID,c.Firstname,c.Lastname
FROM Customer c
WHERE c.FirstName LIKE 'A%'
-- Hint: use LIKE and the % wildcard

-- List Customers with an apple email address
SELECT c.customerID,c.Firstname,c.Lastname,c.Email
FROM Customer c
WHERE c.Email LIKE '%@apple.com'

-- Which customers have the initials LK?
SELECT c.customerID,c.Firstname,c.lastname
FROM Customer c
WHERE c.FirstName LIKE 'L%' AND c.LastName LIKE 'K%'


-- Which are the corporate customers i.e. those with a value, not NULL, in the Company column?
SELECT c.CustomerID,c.FirstName,c.LastName,c.company
From Customer c
WHERE c.company IS NOT NULL

-- How many customers are in each country.  Order by the most popular country first.
SELECT c.Country,COUNT(c.CustomerId) AS CustomerCount
FROM Customer c
GROUP BY
c.Country
ORDER BY CustomerCount DESC

-- When was the oldest employee born?  Who is that?
SELECT e.EmployeeID,e.FirstName,e.LastName,e.Bithdate
FROM Employee e
WHERE e.Birthdate=(SELECT) MIN(Birthdate)FROM Employee)

-- List the 10 latest invoices. Include the InvoiceId, InvoiceDate and Total
-- Then  also include the customer full name (first and last name together)

-- List the customers who have spent more than £45

-- List the City, CustomerId and LastName of all customers in Paris and London, 
-- and the Total of their invoices
	
-- Show all details about customer Michelle Brooks.  List salient details of her invoices.

/*
Which employees were born in the 1960s?  Show only the EmployeeId, FirstName, LastName and BirthDate columns
Note: Define a date value as with the region independent format 'yyyy-mm-dd' e.g. '1969-12-31'
*/


-- List countries, and the number of customers and the total invoiced amount
-- Order  high to low in terms of the number of customers

-- What are the top 10 most popular artists in terms of number of tracks bought by customers?
SELECT TOP 10 ar.Name, COUNT(il.TrackId) AS TracksOrdered
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY ar.ArtistId, ar.Name
ORDER BY TracksOrdered DESC


-- List the albums in alphabetical order of Title

-- List 10 albums and their artist.  Order by album title.

