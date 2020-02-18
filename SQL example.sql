INSERT INTO _Products (Name) VALUES ('Ручка');
INSERT INTO _Products (Name) VALUES ('Линейка');
INSERT INTO _Products (Name)VALUES ('Ботинки');
INSERT INTO _Products (Name) VALUES ('Пистолет');

INSERT INTO _Categories (Name) VALUES ('Канцтовары');
INSERT INTO _Categories (Name) VALUES ('Обувь');

INSERT INTO _Products_Categories (ProductID, CategoryID) VALUES (1 , 1);
INSERT INTO _Products_Categories (ProductID, CategoryID) VALUES (2 , 1);
INSERT INTO _Products_Categories (ProductID, CategoryID) VALUES (3 , 2);

SELECT 
    p.Name,
    c.Name
FROM
    _Products AS p
LEFT JOIN _Products_Categories AS pc ON p.ID = pc.ProductID
LEFT JOIN _Categories AS c ON c.ID = pc.CategoryID