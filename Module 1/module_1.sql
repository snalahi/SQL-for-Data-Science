-- Query 1
-- Retrieve all the records from the Employees table
-- What is Robert King's mailing address?

Select *
From Employees
WHERE LastName = 'King';

-- Query 2
-- Retrieve the FirstName, LastName, Birthdate, Address, City, and State from
-- the Employees table.
-- Which of the employees listed below has a birthdate of 3-3-1965?

Select FirstName
    ,LastName
    ,Birthdate
    ,Address
    ,City
    ,State
From Employees
WHERE Birthdate = '1965-03-03 00:00:00';

-- Query 3
-- Retrieve all the columns from the Tracks table, but only return 20 rows.
-- What is the runtime in milliseconds for the 5th track, entitled "Princess of the Dawn"?

Select *
From Tracks
WHERE TrackId = 5
Limit 20;
