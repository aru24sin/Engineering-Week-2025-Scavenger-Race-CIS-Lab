USE SpaceStationInventory;

-- Insert fake suppliers
INSERT INTO Suppliers (name, secret_hint) VALUES 
('Lunar Supply Co.', 'Check the item with the lowest stock'),
('Martian Logistics', 'Look at modules that rely on out-of-stock items'),
('Orbital Essentials', 'Life support items are the most crucial'),
('Deep Space Resources', 'Fuel shipments are sporadic'),
('Galactic Tech', 'Communication relays are a priority'),
('AstroFood Inc.', 'Food shipments come every month'),
('Nova Medical Supplies', 'Medical stock must always be available');

-- Insert fake inventory items
INSERT INTO Inventory (name, stock, supplier_id) VALUES 
('Oxygen Tanks', 50, 3),
('Water Packs', 20, 3),
('Dehydrated Meals', 5, 6),
('Emergency Repair Kit', 0, 2),
('Fuel Cells', 30, 4),
('Solar Panels', 25, 5),
('Radiation Shields', 15, 2),
('Communication Relays', 40, 5),
('Medical Kits', 60, 7),
('Microgravity Tools', 35, 1),
('Thruster Components', 12, 4),
('Space Suit Parts', 8, 2),
('Battery Packs', 25, 3),
('Thermal Insulation', 18, 5),
('Portable Power Generators', 10, 1),
('Antimatter Containment Units', 2, 4),
('Air Filters', 28, 3),
('Nutrient Paste', 14, 6),
('Hydroponic Seeds', 6, 6),
('Plasma Cutters', 9, 2);

-- Insert fake modules
INSERT INTO Modules (name, item_id) VALUES 
('Life Support', 1),
('Storage Bay', 2),
('Crew Quarters', 3),
('Engineering Bay', 4),
('Propulsion System', 5),
('Solar Array', 6),
('Shielding Unit', 7),
('Command Center', 8),
('Medical Bay', 9),
('Maintenance Hub', 10),
('Fuel Storage', 11),
('Suit Repair Dock', 12),
('Power Distribution', 13),
('Thermal Control', 14),
('Backup Power', 15),
('Research Lab', 16),
('Air Circulation Unit', 17),
('Hydroponic Farm', 18),
('Greenhouse Module', 19),
('Tool Storage', 20);

-- Insert fake supply deliveries
INSERT INTO SupplyDeliveries (item_id, quantity) VALUES 
(1, 10), (2, 5), (3, 3), (4, 2), (5, 6), (6, 4), (7, 3), (8, 7), 
(9, 8), (10, 5), (11, 4), (12, 3), (13, 5), (14, 6), (15, 2), (16, 1),
(17, 4), (18, 3), (19, 2), (20, 5);

-- Insert fake inventory usage
INSERT INTO InventoryUsage (item_id, change_amount) VALUES 
(1, -5), (2, -3), (3, -2), (4, -1), (5, -4), (6, -2), (7, -3), (8, -6), 
(9, -2), (10, -1), (11, -3), (12, -2), (13, -1), (14, -2), (15, -1), 
(16, -4), (17, -5), (18, -2), (19, -3), (20, -1);