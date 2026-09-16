USE CLOTHING_STORE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "FASHION HUB", "9876100001", "fashionhub@gmail.com", "Chennai"),
(202, "DENIM WORLD", "9876100002", "denimworld@gmail.com", "Madurai"),
(203, "URBAN SHIRTS", "9876100003", "urbanshirts@gmail.com", "Coimbatore"),
(204, "STYLE STREET", "9876100004", "stylestreet@gmail.com", "Salem"),
(205, "TRENDY FASHION", "9876100005", "trendyfashion@gmail.com", "Trichy"),

(206, "ETHNIC WEAR", "9876100006", "ethnicwear@gmail.com", "Chennai"),
(207, "SILK HOUSE", "9876100007", "silkhouse@gmail.com", "Kanchipuram"),
(208, "TRENDY TOPS", "9876100008", "trendytops@gmail.com", "Madurai"),
(209, "FASHION DRESS", "9876100009", "fashiondress@gmail.com", "Coimbatore"),
(210, "STYLE PALAZZO", "9876100010", "stylepalazzo@gmail.com", "Salem"),

(211, "KIDS FASHION", "9876100011", "kidsfashion@gmail.com", "Chennai"),
(212, "LITTLE STYLE", "9876100012", "littlestyle@gmail.com", "Madurai"),
(213, "KIDS TREND", "9876100013", "kidstrend@gmail.com", "Coimbatore"),
(214, "KIDS CLOSET", "9876100014", "kidscloset@gmail.com", "Salem"),
(215, "JUNIOR WEAR", "9876100015", "juniorwear@gmail.com", "Trichy"),

(216, "SPORTS FOOTWEAR", "9876100016", "sportsfootwear@gmail.com", "Chennai"),
(217, "SNEAKER ZONE", "9876100017", "sneakerzone@gmail.com", "Madurai"),
(218, "FOOTWEAR MART", "9876100018", "footwearmart@gmail.com", "Coimbatore"),
(219, "FORMAL FOOTWEAR", "9876100019", "formalfootwear@gmail.com", "Salem"),
(220, "COMFORT SHOES", "9876100020", "comfortshoes@gmail.com", "Trichy"),

(221, "LEATHER ACCESSORIES", "9876100021", "leatheraccessories@gmail.com", "Chennai"),
(222, "FASHION BAGS", "9876100022", "fashionbags@gmail.com", "Madurai"),
(223, "CAPS & MORE", "9876100023", "capsandmore@gmail.com", "Coimbatore"),
(224, "STYLE WALLET", "9876100024", "stylewallet@gmail.com", "Salem"),
(225, "FASHION EYEWEAR", "9876100025", "fashioneyewear@gmail.com", "Trichy");

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);


INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 40),
(302, 102, 202, "AVAILABLE", 30),
(303, 103, 203, "AVAILABLE", 25),
(304, 104, 204, "AVAILABLE", 20),
(305, 105, 205, "AVAILABLE", 15),

(306, 106, 206, "AVAILABLE", 35),
(307, 107, 207, "AVAILABLE", 25),
(308, 108, 208, "AVAILABLE", 40),
(309, 109, 209, "AVAILABLE", 30),
(310, 110, 210, "AVAILABLE", 25),

(311, 111, 211, "AVAILABLE", 35),
(312, 112, 212, "AVAILABLE", 25),
(313, 113, 213, "AVAILABLE", 30),
(314, 114, 214, "AVAILABLE", 20),
(315, 115, 215, "AVAILABLE", 40),

(316, 116, 216, "AVAILABLE", 20),
(317, 117, 217, "AVAILABLE", 25),
(318, 118, 218, "AVAILABLE", 30),
(319, 119, 219, "AVAILABLE", 15),
(320, 120, 220, "AVAILABLE", 35),

(321, 121, 221, "AVAILABLE", 30),
(322, 122, 222, "AVAILABLE", 20),
(323, 123, 223, "AVAILABLE", 35),
(324, 124, 224, "AVAILABLE", 25),
(325, 125, 225, "AVAILABLE", 15);

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;

UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;

UPDATE Seller
SET ContactNo = "9876543210"
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;

DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;
SELECT * FROM Seller;

DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;
