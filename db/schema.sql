CREATE TABLE athletes (
    id int,
    identifier varchar(50),
    created timestamp,
    modified timestamp,
    name varchar(1000),
    dob date,
    identified_gender varchar(100),
    email varchar(1000),
    nationality varchar(1000),
    PRIMARY KEY (id)
);

CREATE TABLE contact_person(
	id int,
	name varchar(1000),
	email varchar(1000),
	phone_number varchar(1000),
	primary key(id)
);

CREATE TABLE partners(
	id int,
	cperson_id int,
	name varchar(1000),
	address varchar(1000),
	primary key(id),
	foreign key(cperson_id) references contact_person(id)
);

CREATE TABLE competitions(
	id int,
	name varchar(1000),
	venue varchar(1000),
	start_date date,
	start_time time,
	duration int,
	cperson_id int,
    num_events int,
    max_female int,
    max_male int,
    primary key (id),
    FOREIGN KEY (cperson_id) REFERENCES contact_person(id)	
);

CREATE TABLE register(
	athletes_id int,
	competitions_id int,
	registration_date date,
	points varchar(1000),
	PRIMARY KEY (athletes_id,competitions_id),
	FOREIGN KEY (athletes_id) references athletes (id),
	FOREIGN KEY (competitions_id) references competitions (id)
);

CREATE TABLE create_competitions(
	competitions_id int,
	partners_id int,
	date_created date,
	PRIMARY KEY (competitions_id, partners_id),
	FOREIGN KEY (partners_id) references partners(id),
	FOREIGN KEY (competitions_id) references competitions(id)
);

CREATE TABLE events(
	name varchar(1000),
	score_type varchar(1000),
	time_capped varchar(1000),
	tie_breaker varchar(1000),
	PRIMARY KEY (name)
);

CREATE TABLE create_events(
	competitions_id int,
	events_name varchar(1000),
	date_created date,
	PRIMARY KEY (competitions_id, events_name),
	FOREIGN KEY (events_name) references events(name),
	FOREIGN KEY (competitions_id) references competitions(id)
);

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