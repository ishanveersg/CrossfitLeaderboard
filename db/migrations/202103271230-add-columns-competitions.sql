ALTER TABLE competitions
ADD COLUMN cperson_id int,
ADD COLUMN num_events int,
ADD COLUMN max_female int,
ADD COLUMN max_male int,
ADD FOREIGN KEY (cperson_id) REFERENCES contact_person(id);