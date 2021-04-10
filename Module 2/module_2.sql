-- Query 1
-- Find all the tracks that have a length of 5,000,000 milliseconds or more.
-- How many tracks are returned?

Select Milliseconds,
count(TrackId) AS Tracks
From Tracks
Where Milliseconds >= 5000000

-- Query 2
-- Find all the invoices whose total is between $5 and $15 dollars.
-- How many total records are there?

Select count(InvoiceId) as Invoice_count,
Total
From Invoices
Where Total Between 5 and 15

-- Query 3
-- Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
-- What company does Jack Smith work for?

Select FirstName,
LastName,
State,
Company
From Customers
Where State in ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

-- Query 4
-- Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
-- What was the invoice date for invoice ID 315?

Select CustomerId,
InvoiceId,
InvoiceDate,
Total
From Invoices
Where (CustomerId Between 56 and 58) and (Total Between 1.00 and 5.00)

-- Query 5
-- Find all the tracks whose name starts with 'All'.
-- How many total records are there?

Select count(TrackId) as Tracks_count,
Name
From Tracks
Where Name Like 'All%'

-- Query 6
-- Find all the customer emails that start with "J" and are from gmail.com.
-- What is the one email address returned?

Select Email
From Customers
Where Email Like 'j%gmail.com'

-- Query 7
-- Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
-- What is the total invoice amount of the first record returned?

Select InvoiceId,
BillingCity,
Total
From Invoices
Where BillingCity in ('Brasília', 'Edmonton', 'Vancouver' )
Order By InvoiceId DESC

-- Query 8
-- Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the
-- number of orders in descending order.
-- What is the number of items placed for the 8th person on this list?

Select count(CustomerId) as Order_count,
InvoiceId,
CustomerId
From Invoices
Group By CustomerId
Order By Order_count DESC

-- Query 9
-- Find the albums with 12 or more tracks.
-- How many total records are there?

Select count(TrackId) as Tracks_Count,
TrackId,
AlbumId
From Tracks
Group By AlbumId Having Tracks_Count >= 12
