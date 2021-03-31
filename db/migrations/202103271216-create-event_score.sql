CREATE TABLE event_score(
	athlete_id int,
	events_name varchar(1000),
	main varchar(1000),
	main_tiebreaker varchar(1000),
	secondary varchar(1000),
	secondary_tiebreaker varchar(1000),
	PRIMARY KEY (athlete_id, events_name),
	FOREIGN KEY (athlete_id) REFERENCES athletes (id),
	FOREIGN KEY (events_name) REFERENCES events (name)
);