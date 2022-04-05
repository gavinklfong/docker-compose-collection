-- Create a keyspace
CREATE KEYSPACE IF NOT EXISTS supermarket WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '2' };

-- Create customer table
CREATE TABLE IF NOT EXISTS supermarket.customer (
customer_id uuid,
name text,
telephone text,
email text,
address text,
PRIMARY KEY (customer_id)
);

-- Create shopping basket table
CREATE TABLE IF NOT EXISTS supermarket.shopping_basket (
customer_id uuid,
products frozen<map<uuid,int>>,
PRIMARY KEY (customer_id)
);

-- Create delivery timeslot
CREATE TABLE IF NOT EXISTS supermarket.delivery_timeslot (
delivery_date date,
start_time time,
delivery_team_id int,
status text,
reserved_by_customer_id uuid,
PRIMARY KEY (delivery_date, start_time, delivery_team_id)
);


-- Insert sample customers
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (ef6e860d-90ad-4610-87ee-2652caaa72f3, 'Gerard Mayer', '(461) 429-2539', 'Alexandra51@gmail.com', '60326 Lavern Avenue');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (153872d3-6bd0-4204-9f80-c8a164d0c46d, 'Ida Streich', '619.278.1982', 'Ronaldo_Brekke@hotmail.com', '447 Elwin Circle');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (68363539-6aba-4042-b8ba-2b8bde8bbaa3, 'Melinda Aufderhar', '903.201.6646 x98809', 'Roxanne60@gmail.com', '7807 Hoppe Pines');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (5ce6f5ba-0988-4908-9ae0-7f5e5f48c9a8, 'Angel Mraz', '(660) 207-7657 x64482', 'Grady48@hotmail.com', '25646 Kreiger Prairie');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (59d7ea98-1fa0-4819-895b-a1b409607ea5, 'Richard Jacobs', '1-538-666-6826', 'Efren_Kreiger95@yahoo.com', '87120 Jena Roads');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (3c25fb78-50cc-40dd-b85b-7ebffb036b0f, 'Kelley McCullough', '(677) 737-8003 x84758', 'Kacey.Kertzmann@hotmail.com', '740 Franey Loop');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (bbe1e789-6ff0-426d-a5f5-c86358240c22, 'Jeanette Volkman', '674-659-8365', 'Destin77@gmail.com', '97718 Delmer Harbors');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (d7357ba4-d757-4310-8ce7-438edd8c4efe, 'Ira Bernhard', '424.238.5577 x7837', 'Adela_Beer@gmail.com', '1493 Friesen Curve');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (cbc2e3f8-4f73-4e07-856c-dae354ac15de, 'Eric Hettinger', '1-873-310-8110 x1440', 'Santina57@yahoo.com', '08686 Alexane Club');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (7d9b917a-50c0-4eff-ab24-f429b7049071, 'Ms. Phyllis Bruen', '1-900-534-8391', 'Nathen.Grimes@hotmail.com', '7780 Roderick Route');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (32096d59-861c-425d-bb18-83057fbd303c, 'Mr. Jackie Kunze', '402.984.6168 x2710', 'Guadalupe84@hotmail.com', '635 Bartoletti Courts');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (b5b5f425-19c2-4bcd-91b1-986ce2d3e62a, 'Bernard Quigley', '201-730-6021 x298', 'Gussie.Ortiz@yahoo.com', '80878 Jones Lane');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (1882ce62-32f9-4a32-a11c-8ba8450f0325, 'Ollie Huels', '1-518-599-4024 x914', 'Ottilie91@gmail.com', '4670 Nitzsche Hill');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (f288cc1e-1dc3-4bac-9c35-33dec512c964, 'Marshall Kub', '257.937.0540', 'Hazel.Hettinger@yahoo.com', '909 Barton Heights');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (bc1c88ed-158b-45cc-aebe-3592dca5e97a, 'Sonja Crona', '(434) 935-6534 x9204', 'Ellen.Braun88@yahoo.com', '621 Hamill Haven');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (194e328d-da86-46c7-8689-a81e029f5585, 'Marguerite Lang', '928.616.2570 x464', 'Lesley90@hotmail.com', '0548 Von Squares');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (0fdcb088-0f48-4fd9-8118-e165b1937ea1, 'Dustin Lueilwitz', '1-341-656-4907 x782', 'Columbus27@yahoo.com', '33921 Skylar Flats');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (b5b6855f-a170-4ebe-b735-62e739811ad9, 'Cody Runolfsdottir', '1-288-962-5007', 'Aurelio.Yundt@hotmail.com', '92498 Tate Island');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (f218bcbd-94ab-4ab3-9113-4c51f32e0316, 'Laurie Hane PhD', '330.407.2943', 'Adela_Terry36@hotmail.com', '27897 Jaylin Track');
INSERT INTO supermarket.customer (customer_id, name, telephone, email, address) VALUES (fcd14023-90a8-4f61-9675-d08773815888, 'Betty Cronin', '550.772.7767 x497', 'Vernie.Erdman@yahoo.com', '563 Wilmer Mountains');

-- Insert sample basket record
INSERT INTO supermarket.shopping_basket (customer_id, products)
VALUES (7febc928-a5d0-40d5-ad71-ef7ebe2f2fe3, {54641f90-e6a0-49f9-8d32-eb526e914779: 2, 8586dfc3-a049-41a9-a6f9-9cbbdf9e185a: 1});

-- Insert sample delivery timeslot
INSERT INTO supermarket.delivery_timeslot (delivery_date, start_time, delivery_team_id, status, reserved_by_customer_id)
VALUES ('2022-02-15', '09:00:00', 1, 'AVAILABLE', 7febc928-a5d0-40d5-ad71-ef7ebe2f2fe3);
