-- Create the database schema
CREATE DATABASE RestaurantInventory;
USE RestaurantInventory;

-- Table to store ingredients
CREATE TABLE Ingredients (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INT NOT NULL,
    supplier_id INT
);

-- Table to store suppliers
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    secret_hint VARCHAR(255) NOT NULL
);

-- Table to store menu items
CREATE TABLE MenuItems (
    menu_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    ingredient_id INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);

-- Table to store orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    menu_id INT,
    quantity INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (menu_id) REFERENCES MenuItems(menu_id)
);

-- Table to track inventory transactions
CREATE TABLE InventoryTransactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_id INT,
    change_amount INT NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);
