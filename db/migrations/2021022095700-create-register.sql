CREATE TABLE register(
	athletes_id int,
	competitions_id int,
	registration_date date,
	PRIMARY KEY (athletes_id,competitions_id),
	FOREIGN KEY (athletes_id) references athletes (id),
	FOREIGN KEY (competitions_id) references competitions (id)
);