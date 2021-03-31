ALTER TABLE athletes
ADD COLUMN id int,
ADD COLUMN identifier varchar(50),
ADD COLUMN created timestamp,
ADD COLUMN modified timestamp,
ADD COLUMN name varchar(1000),
ADD COLUMN dob date,
ADD COLUMN identified_gender varchar(100);
