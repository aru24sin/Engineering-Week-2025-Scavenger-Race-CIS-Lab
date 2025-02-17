USE RestaurantInventory;

-- Insert fake suppliers
INSERT INTO Suppliers (name, secret_hint) VALUES 
('Fresh Foods Co.', 'Check the ingredient with lowest stock'),
('Quality Meats Ltd.', 'Look at menu items that use out-of-stock ingredients'),
('Ocean Harvest', 'Seafood ingredients arrive weekly'),
('Dairy Best', 'Cheese supply fluctuates monthly'),
('Spice World', 'Exotic spices arrive on Fridays'),
('Green Valley Farms', 'Organic vegetables available in limited stock'),
('Baker’s Choice', 'Fresh bread delivered daily');

-- Insert fake ingredients
INSERT INTO Ingredients (name, stock, supplier_id) VALUES 
('Tomatoes', 50, 1),
('Cheese', 20, 4),
('Lettuce', 5, 2),
('Special Sauce', 0, 2),
('Chicken', 30, 3),
('Beef', 25, 2),
('Fish Fillet', 15, 3),
('Bread Buns', 40, 1),
('Eggs', 60, 4),
('Onions', 35, 1),
('Garlic', 22, 5),
('Bell Peppers', 18, 6),
('Cucumber', 12, 6),
('Olive Oil', 8, 5),
('Basil', 6, 5),
('Mushrooms', 14, 6),
('Pasta', 25, 7),
('Rice', 45, 7),
('Shrimp', 10, 3),
('Salmon', 5, 3),
('Butter', 15, 4),
('Milk', 30, 4),
('Flour', 40, 7),
('Sugar', 35, 7),
('Salt', 50, 5);

-- Insert fake menu items
INSERT INTO MenuItems (name, ingredient_id) VALUES 
('House Salad', 3),
('Secret Special Burger', 4),
('Grilled Chicken Sandwich', 5),
('Beef Steak', 6),
('Fish Tacos', 7),
('Cheese Omelette', 9),
('Tomato Soup', 1),
('Classic Cheeseburger', 2),
('Onion Rings', 10),
('Garlic Bread', 11),
('Stuffed Peppers', 12),
('Cucumber Salad', 13),4
('Pasta Primavera', 16),
('Seafood Paella', 19),
('Salmon Steak', 20),
('Garlic Butter Shrimp', 19),
('Mushroom Risotto', 17),
('Vegetable Stir-Fry', 12),
('French Toast', 22),
('Chocolate Cake', 24);

-- Insert fake orders
INSERT INTO Orders (menu_id, quantity) VALUES 
(1, 2), (2, 1), (3, 3), (4, 1), (5, 2), (6, 4), (7, 2), (8, 3), (9, 5), 
(10, 2), (11, 1), (12, 3), (13, 1), (14, 2), (15, 4), (16, 2), (17, 3), (18, 2),
(19, 3), (20, 4), (1, 5), (3, 2), (5, 3), (7, 4), (9, 1);

-- Insert fake inventory transactions
INSERT INTO InventoryTransactions (ingredient_id, change_amount) VALUES 
(1, -5), (2, -3), (3, -2), (4, -1), (5, -4), (6, -2), (7, -3), (8, -6), 
(9, -2), (10, -1), (11, -3), (12, -2), (13, -1), (14, -2), (15, -1), (16, -4),
(17, -5), (18, -2), (19, -3), (20, -1), (21, -2), (22, -3), (23, -1), (24, -2), (25, -1);
