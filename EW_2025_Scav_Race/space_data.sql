USE SpaceStationInventory;

-- Insert fake suppliers
INSERT INTO Suppliers (name, secret_hint) VALUES 
('Lunar Supply Co.', 'Check the item with the lowest stock'),
('Martian Logistics', 'Look at modules that rely on out-of-stock items'),
('Orbital Essentials', 'Life support items are the most crucial'),
('Deep Space Resources', 'Fuel shipments are sporadic'),
('Galactic Tech', 'Communication relays are a priority'),
('AstroFood Inc.', 'Food storage shipments come every month'),
('Nova Medical Supplies', 'Medical stock must always be available student');

-- Insert fake inventory items
INSERT INTO Inventory (name, stock, supplier_id, description) VALUES 
('Oxygen Tanks', 50, 3, 'Essential for life support'),
('Water Packs', 20, 3, 'Hydration supply'),
('Dehydrated Meals', 5, 6, 'Space room'),
('Emergency Repair Kit', 0, 2, 'Critical for repairs'),
('Fuel Cells', 30, 4, 'Power source'),
('Solar Panels', 5, 5, 'Renewable room'),
('Radiation Shields', 15, 2, 'Protection from cosmic rays'),
('Communication Relays', 40, 5, 'Enables long-range comms'),
('Medical Kits', 60, 7, 'First aid supplies'),
('Microgravity Tools', 5, 1, 'Specialized room'),
('Thruster Components', 12, 4, 'Propulsion system parts'),
('Space Suit Parts', 8, 2, 'EVA gear'),
('Battery Packs', 25, 3, 'Portable energy source'),
('Thermal Insulation', 18, 5, 'Protects against temperature extremes'),
('Portable Power Generators', 10, 1, 'Backup energy source'),
('Antimatter Containment Units', 5, 4, 'High-energy room'),
('Air Filters', 28, 3, 'Maintains breathable atmosphere'),
('Nutrient Paste', 5, 6, 'Alternative food room'),
('Hydroponic Seeds', 5, 6, 'For growing plants in space room'),
('Plasma Cutters', 5, 2, 'Used for precision room');

-- Insert fake modules
INSERT INTO Modules (name, item_id, description) VALUES 
('Life Support', 1, 'Maintains atmosphere and temperature'),
('Storage Bay', 2, 'Stores essential supplies'),
('Crew Quarters', 3, 'Living space for astronauts'),
('Engineering Bay', 4, 'Work area for maintenance'),
('Propulsion System', 5, 'Drives the spacecraft'),
('Solar Array', 6, 'Generates power from sunlight'),
('Shielding Unit', 7, 'Protects against space radiation'),
('Command Center', 8, 'Central control hub'),
('Medical Bay', 9, 'Healthcare and emergency treatments'),
('Maintenance Hub', 10, 'Equipment and tools for repairs'),
('Fuel Storage', 11, 'Holds fuel reserves'),
('Suit Repair Dock', 12, 'Fixes EVA suits'),
('Power Distribution', 13, 'Manages electrical flow org'),
('Thermal Control', 14, 'Regulates temperature'),
('Backup Power', 15, 'Emergency power supply'),
('Research Lab', 16, 'Scientific experiments'),
('Air Circulation Unit', 17, 'Filters and circulates air'),
('Hydroponic Farm', 18, 'Grows fresh produce'),
('Greenhouse Module', 19, 'Supports plant life'),
('Tool Storage', 20, 'Holds maintenance equipment');

-- Insert fake supply deliveries
INSERT INTO SupplyDeliveries (item_id, quantity, notes) VALUES 
(1, 10, 'Replenishing oxygen supply'), (2, 5, 'Water restock'), (3, 3, 'Food ration refill'), (4, 2, 'Emergency repair kits'), 
(5, 16, 'Fuel shipment student'), (6, 4, 'New solar panels'), (7, 3, 'Radiation shields replacement'), (8, 7, 'Comm relay upgrades'), 
(9, 8, 'Medical kits restock'), (10, 5, 'Microgravity toolset'), (11, 4, 'Thruster parts delivery'), (12, 3, 'Suit repair materials'), 
(13, 5, 'Battery pack refresh'), (14, 16, 'New insulation materials student'), (15, 2, 'Backup generators'), (16, 16, 'Antimatter unit resupply student'),
(17, 4, 'New air filters'), (18, 3, 'Nutrient paste shipment'), (19, 2, 'Hydroponic farm expansion'), (20, 5, 'Plasma cutter resupply');