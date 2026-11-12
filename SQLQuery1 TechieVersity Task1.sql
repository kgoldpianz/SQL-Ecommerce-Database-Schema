CREATE TABLE CUSTOMERS (
    CustomerID INT Primary Key  IDENTITY(1,1),
	FirstName Varchar (50) NOT NULL,
	LastName Varchar (50)  NOT NULL,
	Email varchar (100),
	PhoneNumber varchar (15),
	Addresss varchar (255),
	City varchar(50),
	RegistrationDate date default getdate(),
	);

	SELECT * FROM CUSTOMERS

	SP_RENAME 'CUSTOMERS.Addresss','Address', 'COLUMN';

	INSERT INTO CUSTOMERS (FirstName, LastName, Email, PhoneNumber,Address, City, 
	RegistrationDate) VALUES
	('Amina','Abubakar','amina.abubakar@example.com','0803123457','23 Adeola
	Avenue','Lagos',GETDATE()),
	('Chinedu','Okafor','chinedu.okafor@example.com','08061234568','14 Unity Road',
	'Abuja',GETDATE()),
	('Fatima','Yusuf','fatima.yusuf@example.com','08171234569','12 Iwo Road',
	'Ibadan',GETDATE())
	;


	CREATE TABLE PRODUCTS(
		ProductID INT Primary key IDENTITY(1,1),
		ProductName Varchar (100) not null,
		Category varchar (50) not null,
		Price Decimal(10,2) not null,
		StockQuantity INT
		);

		INSERT INTO PRODUCTS (ProductName,Category,Price,StockQuantity) VALUES
			('Mobile Phone','Electronics',50000.00,25),
			('Bluetooth Speaker','Electronics',8000.00,100),
			('Leather Wallet','Accessories',2000.00,50);
		select *
		from PRODUCTS


		CREATE TABLE ORDERS (
			OrdersID INT Primary key IDENTITY(1,1),
			CustomerID INT Foreign key references customers(customerID),
			OrderDate datetime default getdate(),
			TotalAmount decimal(10,2) not null);

		INSERT INTO ORDERS (CustomerID,OrderDate,TotalAmount) VALUES
			(1,'2023-11-01 10:30:00',52000.00),
			(2,'2023-11-02 15:45:00',12000.00),
			(3,'2023-11-03 09:15:00',2000.00);

		select* from ORDERS


		CREATE TABLE OrderDetails(
			OrderDetailID INT Primary key IDENTITY(1,1),
			OrderID INT Foreign key References Orders(OrdersID),
			ProductID INT Foreign key References Products(ProductID),
			Quantity INT not null,
			UnitPrice Decimal(10,2) not null,
			TotalPrice Decimal(10,2) not null
			);
		INSERT INTO OrderDetails (OrderID,ProductID,Quantity,UnitPrice,TotalPrice) 
			VALUES
			(1,1,1,50000.00,50000.00),
			(2,2,1,8000.00,8000.00),
			(3,3,1,2000.00,2000.00);

		SELECT* FROM OrderDetails
		





