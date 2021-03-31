
Insert Into athletes(id, identifier, name, email,dob, identified_gender,nationality)
Values  (1, 'ath1','serena williams','serena1@gmail.com','1978-01-02','F','USA'),
        (2, 'ath2','maria sharapova','maria2@gmail.com', '1974-04-05','F','Russia'),
        (3, 'ath3','venus williams','venus3@gmail.com','1979-07-07','F','USA'),
        (4, 'ath4','saina nehwal','saina4@gmail.com', '1982-09-23','F','India'),
        (5, 'ath5','caroline wozniacki','caroline5@gmail.com','1973-12-05','F','Denmark'),
        (6, 'ath6','simona halep','simona6@gmail.com', '1986-02-06','F','Romania'),
        (7, 'ath7','alex morgan','alex7@gmail.com','1971-11-02','F','USA'),
        (8, 'ath8','fu yuanhui','fu8@gmail.com','1988-02-07','F','China'),
        (9, 'ath9','lindsey vonn','lindsey9@gmail.com', '1968-12-09','F','USA'),
        (10, 'ath10','michelle wie','michelle10@gmail.com','1964-11-22','F','USA'),
        (11, 'ath11','victoria azarenka','victoria11@gmail.com','1970-11-26','F','Belarus'),
        (12, 'ath12','sania mirza','sania12@gmail.com', '1975-03-18','F','India'),
        (13, 'ath13','garbine muguruza','garbine13@gmail.com','1980-05-10','F','Spain'),
        (14, 'ath14','danica patrick','danica14@gmail.com', '1969-06-06','F','USA'),
        (15, 'ath15','ding ning','ding15@gmail.com', '1979-11-04','F','China'),
        (16, 'ath16','tessa virtue','tessa16@gmail.com', '1985-03-19','F','Canada'),
        (17, 'ath17','simone biles','simone17@gmail.com', '1983-09-14','F','USA'),
        (18, 'ath18','p.v sindhu','pv18@gmail.com','1970-02-09','F','India'),
        (19, 'ath19','angelique kerber', 'angelique19@gmail.com','1968-10-20','F','Germany'),
        (20, 'ath20','alina zagitova', 'alina20@gmail.com','1992-10-25','F','Russia');


Insert Into athletes(id, identifier, name,email, dob, identified_gender,nationality)
values  (21,'ath21','kobe bryant','kobe21@gmail.com','1978-08-23','M','USA'),
        (22,'ath22','david beckham','david22@gmail.com','1975-05-02','M','UK'),
        (23,'ath23','tiger woods','tiger23@gmail.com','1975-12-30','M','USA'),
        (24,'ath24','lebron james','lebron24@gmail.com','1984-12-30','M','USA'),
        (25,'ath25','michael jordan','michael25@gmail.com','1963-02-17','M','USA'),
        (26,'ath26','alex rodriguez','alex26@gmail.com','1975-07-27','M','USA'),
        (27,'ath27','dennis rodman','dennis27@gmail.com','1961-05-13','M','USA'),
        (28,'ath28','mike tyson','mike28@gmail.com','1966-06-30','M','USA'),
        (29,'ath29','muhammad ali','muhammad29@gmail.com','1942-01-17','M','USA'),
        (30,'ath30','lance armstrong','lance30@gmail.com','1971-09-18','M','USA'),
        (31,'ath31','derek jeter','derek31@gmail.com','1974-06-26','M','New Jersey'),
        (32,'ath32','ethan zohn','ethan32@gmail.com','1973-11-12','M','USA'),
        (33,'ath33','tim tebow','tim33@gmail.com','1987-08-14','M','Philippines'),
        (34,'ath34','michael phelps','michael34@gmail.com','1985-06-30','M','USA'),
        (35,'ath35','roger federer','roger35@gmail.com','1981-08-08','M','Switzerland'),
        (36,'ath36','peyton manning','peyton36@gmail.com','1976-03-24','M','USA'),
        (37,'ath37','terrell owens','terrell37@gmail.com','1973-12-07','M','USA'),
        (38,'ath38','magic johnson','magic38@gmail.com','1959-08-14','M','USA'),
        (39,'ath39','shaquille oneal','shaquille39@gmail.com','1972-03-06','M','USA'),
        (40,'ath40','rafael nadal','rafael40@gmail.com','1986-06-03','M','Spain');

INSERT INTO contact_person(id, name, email, phone_number)
VALUES  (1, 'andrew forward', 'aforw1@gmail.com', '+1 (234) 234-5678'),
        (2, 'ayana backword', 'aback2@gmail.com','+1 (456) 923-1203'),
        (3, 'jane straight', 'jstra3@gmail.com', '+1 (234) 827-3758'),
        (4, 'umar right', 'urigh4@gmail.com', '+1 (256) 238-3891');

INSERT INTO partners (id, cperson_id, name, address)
VALUES  (1, 4, 'lux le morne','mauritius'),
        (2, 3, 'wells fargo', 'america'),
        (3, 2, 'whole foods market', 'canada'),
        (4, 1, 'pepsi', 'united kingdom');

INSERT INTO competitions ( id , name , venue, cperson_id, num_events)
VALUES  (1, 'Ottawa Trail', 'Ottawa', 4, 1 ),
        (2, 'Triathlon 2021', 'Montreal', 3, 3),
        (3, '5 Workout', 'Toronto', 2, 5),
        (4, 'SportDay 2021', 'Vancouver', 1, 4);

INSERT INTO register (athletes_id , competitions_id, registration_date, points)
VALUES  (1,  1, '2021-01-12','2 (5)'),
        (31, 1, '2021-01-13','2 (5)'),
        (2,  1, '2021-02-23','1 (2)'),
        (18, 1, '2021-01-20','4 (9)'),
        (20, 1, '2021-01-26','4 (9)'),
        (40, 4, '2021-01-10','1 (0)'),
        (25, 2, '2021-03-28','1 (0)'),
        (2,  3, '2021-02-28','2 (6)'),
        (3,  3, '2021-02-12','5 (9)'),
        (27, 3, '2021-02-14','2 (6)'),
        (17, 3, '2021-02-23','2 (6)'),
        (39, 3, '2021-02-28','1 (3)');

INSERT INTO create_competitions(competitions_id, partners_id, date_created)
VALUES  (1,1, '2020-12-27'),
        (2,2, '2020-11-12'),
        (3,3, '2020-09-29'),
        (4,4, '2020-10-20');
        
INSERT INTO events (name, score_type, time_capped, tie_breaker)
VALUES  ('Event 1', 'Time', 'N/A', 'None'),
        ('Event 2', '# Reps','N/A', 'None'),
        ('20.1', 'Time', '# Reps', 'Time of last round'),
        ('20.2', '# Reps', 'N/A', 'Time of lst round');

INSERT INTO create_events(competitions_id, events_name, date_created)
VALUES  (1, 'Event 1', '2021-01-01'),
        (1, 'Event 2', '2021-02-28'),
        (2, 'Event 1', '2021-01-02'),
        (3, '20.1', '2021-01-02'),
        (3, '20.2', '2021-01-03'),
        (4, '20.1', '2020-12-31');

INSERT INTO event_score (athlete_id, events_name, main)
VALUES  (1, 'Event 1','3 (36:59.00)'),
        (31,'Event 1','2 (36:57.01)'),
        (2, 'Event 1','1 (36:39.02)'),
        (18,'Event 1','4 (37:02.00)'),
        (20,'Event 1','5 (37:02.05)'),
        (1, 'Event 2','2 (80 reps)'),
        (31,'Event 2','3 (79 reps)'),
        (2, 'Event 2','1 (81 reps)'),
        (18,'Event 2','5 (76 reps)'),
        (20,'Event 2','4 (78 reps)'),
        (2, '20.1','3 (20:00.01)'),
        (3, '20.1','5 (21:02.00)'),
        (27,'20.1','1 (19:05.01)'),
        (17,'20.1','4 (20:12.14)'),
        (39,'20.1','2 (19:17.00)'),
        (2, '20.2','3 (29 reps)'),
        (3, '20.2','4 (28 reps)'),
        (27,'20.2','5 (27 reps)'),
        (17,'20.2','2 (30 reps)'),
        (39,'20.2','1 (31 reps)');