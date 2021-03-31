CREATE TABLE create_events(
	competitions_id int,
	events_name varchar(1000),
	date_created date,
	PRIMARY KEY (competitions_id, events_name),
	FOREIGN KEY (events_name) references events(name),
	FOREIGN KEY (competitions_id) references competitions(id)
);