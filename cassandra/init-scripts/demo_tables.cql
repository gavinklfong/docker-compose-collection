-- Create keyspace
CREATE KEYSPACE IF NOT EXISTS demo WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '1' };

-- Create employment table
CREATE TABLE IF NOT EXISTS demo.uk_employment_by_region (
ethnicity text,
year int,
region text,
age text,
sex text,
percentage double,
confidence_interval double,
numerator int,
denominator int,
samp_size int,
PRIMARY KEY (ethnicity, year, region, age, sex)
);

INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '16-24', 'All', 59.7, 0.4, 3934400, 6588000, 49218);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '16-24', 'Men', 62, 0.6, 2049500, 3307800, 24281);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '16-24', 'Women', 57.5, 0.6, 1884900, 3280200, 24937);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '25-49', 'All', 81.1, 0.2, 16539000, 20396800, 168242);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '25-49', 'Men', 88.4, 0.2, 8915700, 10088100, 79129);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '25-49', 'Women', 73.9, 0.3, 7623300, 10308700, 89113);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '50-64', 'All', 64.2, 0.3, 6584500, 10263500, 97762);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '50-64', 'Men', 71.8, 0.4, 3630600, 5054600, 47298);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '50-64', 'Women', 56.7, 0.4, 2953900, 5208900, 50464);
INSERT INTO demo.uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', 'All', 'All', 72.6, 0.2, 27057900, 37248300, 315222);


-- Create order table
CREATE TABLE IF NOT EXISTS demo.orders (
customer_id int,
order_ref text,
status text,
total_amount double,
delivery_date date,
delivery_timeslot time,
delivery_address text,
PRIMARY KEY ((customer_id, delivery_date), order_ref, status)
)
WITH CLUSTERING ORDER BY (order_ref DESC)



CREATE TABLE IF NOT EXISTS demo.orders (
customer_id int,
order_ref text,
status text,
total_amount double,
delivery_date date,
delivery_timeslot time,
delivery_address text,
PRIMARY KEY (customer_id, order_ref)
)
WITH CLUSTERING ORDER BY (order_ref DESC)

INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address) VALUES 
 (3, 'PW9QBN4S', 'DISPATCHED', 232.00, '2022-02-25', '14:00:00', '203 Johns Harbor, New York');
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address) VALUES 
 (2, 'RFGBIIHM', 'DISPATCHED', 478.00, '2022-02-10', '09:00:00', '655 Gorczany Plain, Everett');
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address) VALUES 
 (2, 'K8V8E0IM', 'SUBMITTED', 203.00, '2022-02-10', '14:00:00', '4329 Grayce Station, Frisco');
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address) VALUES 
 (1, '75TPT70S', 'DISPATCHED', 246.00, '2022-02-25', '12:00:00', '246 Alessandro Stream, Mount Prospect');
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address) VALUES 
 (1, 'YQPZ6M4V', 'SUBMITTED', 465.00, '2022-02-25', '14:00:00', '309 Reichert Common, Biloxi');
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address) VALUES 
 (1, 'CGT97K4Q', 'DISPATCHED', 276.00, '2022-02-10', '09:00:00', '32711 Heaven Mills, Rancho Cucamonga');


CREATE TABLE IF NOT EXISTS demo.orders (
customer_id int,
order_ref text,
status text,
total_amount double,
delivery_date date,
delivery_timeslot time,
delivery_address text,
products map<text,int>,
PRIMARY KEY (customer_id, order_ref)
);

INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address, products) VALUES 
 (3, 'PW9QBN4S', 'DISPATCHED', 232.00, '2022-02-25', '14:00:00', '203 Johns Harbor, New York', {'Car':1,'Salad':3,'Hat':1,'Computer':3,'Chicken':2,'Shirt':3});
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address, products) VALUES 
 (2, 'RFGBIIHM', 'DISPATCHED', 478.00, '2022-02-10', '09:00:00', '655 Gorczany Plain, Everett', {'Soap':2,'Sausages':3,'Ball':3});
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address, products) VALUES 
 (2, 'K8V8E0IM', 'SUBMITTED', 203.00, '2022-02-10', '14:00:00', '4329 Grayce Station, Frisco', {'Keyboard':4,'Shoes':2});
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address, products) VALUES 
 (1, '75TPT70S', 'DISPATCHED', 246.00, '2022-02-25', '12:00:00', '246 Alessandro Stream, Mount Prospect', {'Pants':2,'Soap':2,'Computer':4,'Chicken':3,'Ball':1,'Bike':3,'Shoes':1,'Sausages':3});
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address, products) VALUES 
 (1, 'YQPZ6M4V', 'SUBMITTED', 465.00, '2022-02-25', '14:00:00', '309 Reichert Common, Biloxi', {'Fish':2,'Computer':1});
INSERT INTO demo.orders (customer_id, order_ref, status, total_amount, delivery_date, delivery_timeslot, delivery_address, products) VALUES 
 (1, 'CGT97K4Q', 'DISPATCHED', 276.00, '2022-02-10', '09:00:00', '32711 Heaven Mills, Rancho Cucamonga', {'Pizza':2,'Towels':3,'Table':3,'Cheese':2,'Car':2,'Pants':1});
