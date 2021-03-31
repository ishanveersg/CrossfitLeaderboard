CREATE TABLE create_competitions(
	competitions_id int,
	partners_id int,
	date_created date,
	PRIMARY KEY (competitions_id, partners_id),
	FOREIGN KEY (partners_id) references partners(id),
	FOREIGN KEY (competitions_id) references competitions(id)
);