CREATE VIEW v_UserWithCountries AS
SELECT CONCAT(C.FirstName, ' ',C.LastName) AS CustomerName ,C.Age  ,C.Gender,CS.Name AS CountryName FROM Customers AS C
JOIN Countries AS CS ON CS.Id = C.CountryId