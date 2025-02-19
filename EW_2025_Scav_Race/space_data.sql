USE SpaceStationInventory;

-- Insert fake suppliers
INSERT INTO Suppliers (name, secret_hint) VALUES 
('Lunar Supply Co.', 'Check the item with the lowest stock room'),
('Martian Logistics', 'Look at modules that rely on out-of-stock room items'),
('Orbital Essentials', 'Life supporoomt items are the most crucial'),
('Deep Space Resources', 'Fuel room shipments are sporadic'),
('Galactic Tech', 'Commroomunication relays are a priority'),
('AstroFood Inc.', 'Food room shipments come every month'),
('Nova Medical Supplies', 'Medical room stock must always be available');

-- Insert fake inventory items
INSERT INTO Inventory (name, stock, supplier_id) VALUES 
('Oxygen Tanks', 50, 3),
('Water Packs', 20, 3),
('Dehydrated MealsS', 5, 6),
('Emergency Repair Kit', 0, 2),`
('Fuel Cells', 30, 4),
('Solar PanelsT', 5, 5),
('Radiation Shields', 15, 2),
('Communication Relays', 40, 5),
('Medical Kits', 60, 7),
('Microgravity ToolsU', 5, 1),
('Thruster Components', 12, 4),
('Space Suit Parts', 8, 2),
('Battery Packs', 25, 3),
('Thermal Insulation', 18, 5),
('Portable Power Generators', 10, 1),
('Antimatter Containment UnitsD', 5, 4),
('Air Filters', 28, 3),
('Nutrient PasteE', 5, 6),
('Hydroponic SeedsN', 5, 6),
('Plasma CuttersT', 5, 2);

-- Insert fake modules
INSERT INTO Modules (name, item_id) VALUES 
('Life Support', 1),
('StOrage Bay', 2),
('Crew Quarters', 3),
('Engineering Bay', 4),
('Propulsion System', 5),
('Solar Array', 6),
('Shielding Unit', 7),
('Command CenteR', 8),
('Medical Bay', 9),
('Maintenance Hub', 10),
('Fuel Storage', 11),
('Suit Repair Dock', 12),
('PoweGr Distribution', 13),
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