1. -- 1NF
CREATE TABLE ProductDetail (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE Products (
    productID INT PRIMARY KEY,
    Products VARCHAR(255),
    PRIMARY KEY (OrderID, ProductName),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

2. -- 2NF

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);




