-- Create the database
CREATE DATABASE SpaceStationInventory;
USE SpaceStationInventory;

-- Table to store suppliers (must be created first)
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    secret_hint VARCHAR(255) NOT NULL
);

-- Table to store inventory items
CREATE TABLE Inventory (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INT NOT NULL,
    supplier_id INT,
    description VARCHAR(255),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Table to store space station modules
CREATE TABLE Modules (
    module_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    item_id INT,
    description VARCHAR(255),
    FOREIGN KEY (item_id) REFERENCES Inventory(item_id)
);

-- Table to store supply deliveries
CREATE TABLE SupplyDeliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    quantity INT NOT NULL,
    delivery_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes VARCHAR(255),
    FOREIGN KEY (item_id) REFERENCES Inventory(item_id)
);

-- Table to track inventory usage
CREATE TABLE InventoryUsage (
    usage_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    change_amount INT NOT NULL,
    usage_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES Inventory(item_id)
);

