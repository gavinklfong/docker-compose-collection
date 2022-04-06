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

INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '16-24', 'All', 59.7, 0.4, 3934400, 6588000, 49218);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '16-24', 'Men', 62, 0.6, 2049500, 3307800, 24281);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '16-24', 'Women', 57.5, 0.6, 1884900, 3280200, 24937);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '25-49', 'All', 81.1, 0.2, 16539000, 20396800, 168242);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '25-49', 'Men', 88.4, 0.2, 8915700, 10088100, 79129);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '25-49', 'Women', 73.9, 0.3, 7623300, 10308700, 89113);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '50-64', 'All', 64.2, 0.3, 6584500, 10263500, 97762);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '50-64', 'Men', 71.8, 0.4, 3630600, 5054600, 47298);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', '50-64', 'Women', 56.7, 0.4, 2953900, 5208900, 50464);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', 'All', 'All', 72.6, 0.2, 27057900, 37248300, 315222);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', 'All', 'Men', 79.1, 0.2, 14595800, 18450400, 150708);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'All', 'All', 'Women', 66.3, 0.2, 12462100, 18797900, 164514);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '16-24', 'All', 61.4, 1.5, 300300, 489000, 4054);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '16-24', 'Men', 63.8, 2.1, 157500, 247000, 2002);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '16-24', 'Women', 59, 2.1, 142800, 242000, 2052);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '25-49', 'All', 82.5, 0.6, 1207900, 1463900, 13321);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '25-49', 'Men', 89.6, 0.7, 649000, 724300, 6386);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '25-49', 'Women', 75.6, 1, 559000, 739600, 6935);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '50-64', 'All', 64.3, 1.1, 507100, 789200, 7849);
INSERT INTO uk_employment_by_region (ethnicity, year, region, age, sex, percentage, confidence_interval, numerator, denominator, samp_size) VALUES ('All', 2004, 'East Midlands', '50-64', 'Men', 72.5, 1.4, 284700, 392800, 3911);
