SELECT FirstName, Age, PhoneNumber FROM Customers 
WHERE (age >=21 and FirstName like '%an%') or (PhoneNumber like '%38' and CountryId != 31)
order by FirstName, age desc