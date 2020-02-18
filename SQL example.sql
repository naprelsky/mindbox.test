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
