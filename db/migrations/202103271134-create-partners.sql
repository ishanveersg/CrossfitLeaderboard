CREATE TABLE partners(
	id int,
	cperson_id int,
	name varchar(1000),
	address varchar(1000),
	primary key(id),
	foreign key(cperson_id) references contact_person(id)
);