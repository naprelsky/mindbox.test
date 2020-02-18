CREATE TABLE Products(ID int PRIMARY KEY IDENTITY,
					  Name nvarchar(100) NOT NULL);

CREATE TABLE Categories(ID int PRIMARY KEY IDENTITY,
					    Name nvarchar(100) NOT NULL);

CREATE TABLE Products_Categories(ID int PRIMARY KEY IDENTITY,
					             ProductID int NOT NULL,
                                 CategoryID int NOT NULL,
                                 FOREIGN KEY (ProductID) REFERENCES Products(ID),
                                 FOREIGN KEY (CategoryID) REFERENCES Categories(ID));

INSERT INTO Products (Name) VALUES ('Ручка');
INSERT INTO Products (Name) VALUES ('Линейка');
INSERT INTO Products (Name)VALUES ('Ботинки');
INSERT INTO Products (Name) VALUES ('Пистолет');

INSERT INTO Categories (Name) VALUES ('Канцтовары');
INSERT INTO Categories (Name) VALUES ('Обувь');

INSERT INTO Products_Categories (ProductID, CategoryID) VALUES (1 , 1);
INSERT INTO Products_Categories (ProductID, CategoryID) VALUES (2 , 1);
INSERT INTO Products_Categories (ProductID, CategoryID) VALUES (3 , 2);

SELECT 
    p.Name,
    c.Name
FROM
    Products AS p
LEFT JOIN Products_Categories AS pc ON p.ID = pc.ProductID
LEFT JOIN Categories AS c ON c.ID = pc.CategoryID
