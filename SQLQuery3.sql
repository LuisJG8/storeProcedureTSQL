CREATE PROC uspInsertCustomer

@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50)

AS 

INSERT INTO Customer(firstName, lastName, email)
SELECT @FirstName, @LastName, @Email


exec uspInsertCustomer 'James', 'Bond', 'jamesbond@gmail.com'

SELECT * FROM Customer