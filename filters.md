## SQL FILTERS

#### Rank() over and row_number() over queries

To get the row number:
```sql
select row_number() over() as row,...
from table_name
```
To get the rank of an athlete:
```sql 
select rank() over() as row,...
from table_name
```

### FILTER ATHLETES 


#### Filter by name DESC

```sql 
SELECT row_number() over (order by name DESC) as row_number, name, dob , identified_gender as gender , nationality
FROM athletes;
```

#### Filter by name ASC

```sql 
SELECT row_number() over (order by name ASC) as row_number, name, dob , identified_gender as gender , nationality
FROM athletes;
```

#### Filter by nationality 

``` sql 
SELECT row_number() over (order by nationality) as rank, nationality, name , dob , identified_gender as gender
FROM athletes;
```

#### Filter by dob 

```sql
SELECT row_number() over( order by dob ASC) as row_number,name, dob,identified_gender as gender,nationality
from athletes;
```

### FILTER COMPETITIONS

#### Filter by name DESC

```sql
SELECT row_number() over (order by name DESC) as row_number, name , venue , num_events
from competitions;
```

#### Filter by name ASC

```sql
SELECT row_number() over (order by name ASC) as row_number, name , venue , num_events
from competitions;
```

#### Filter by venue 

```sql
SELECT row_number() over (order by venue )as row_number, venue , name, num_events
from competitions;
```

### FILTER PARTNERS

#### Filter by name ASC 

``` sql
SELECT row_number() over (order by name ASC) as row_number, name, address as location
from partners;
```

#### Filter by name DESC

``` sql
SELECT row_number() over (order by name DESC) as row_number, name, address as location
from partners;
```

#### Filter by location

``` sql
SELECT row_number() over (order by address) as row_number,address as location, name  
from partners;
```

### FILTER LEADERBOARD

#### Filter by competition1 

```sql
SELECT a.name, a.identified_gender as gender ,a.nationality,
	(SELECT points FROM register r where competitions_id=1 AND r.athletes_id=a.id) AS points,
	(SELECT main FROM event_score e where events_name='Event 1' AND e.athlete_id= a.id)  AS event1,
	(SELECT main FROM event_score e where events_name='Event 2'  AND e.athlete_id= a.id)AS event2
FROM athletes a
ORDER BY points ASC, event1 ASC, event2 ASC;

```

#### Filter by competition3

```sql
SELECT a.name,a.identified_gender as gender, a.nationality,
	(SELECT points FROM register r where competitions_id=3 AND r.athletes_id=a.id) AS points,
	(SELECT main FROM event_score e where events_name='20.1' AND e.athlete_id= a.id)  AS event201,
	(SELECT main FROM event_score e where events_name='20.2'  AND e.athlete_id= a.id)AS event202
FROM athletes a
ORDER BY points ASC, event201 ASC, event202 ASC;

```

#### Filter by competition 1 and gender 

```sql
SELECT a.name, a.identified_gender as gender, a.nationality,
	(SELECT points FROM register r where competitions_id=1 AND r.athletes_id=a.id) AS points,
	(SELECT main FROM event_score e where events_name='Event 1' AND e.athlete_id= a.id)  AS event1,
	(SELECT main FROM event_score e where events_name='Event 2'  AND e.athlete_id= a.id)AS event2
FROM athletes a
ORDER BY a.identified_gender, points ASC, event1 ASC, event2 ASC;

```

#### Filter by competition 3 and gender 

```sql
SELECT a.name,a.identified_gender as gender, a.nationality,
	(SELECT points FROM register r where competitions_id=3 AND r.athletes_id=a.id) AS points,
	(SELECT main FROM event_score e where events_name='20.1' AND e.athlete_id= a.id)  AS event201,
	(SELECT main FROM event_score e where events_name='20.2'  AND e.athlete_id= a.id)AS event202
FROM athletes a
ORDER BY gender, points ASC, event201 ASC, event202 ASC;

```